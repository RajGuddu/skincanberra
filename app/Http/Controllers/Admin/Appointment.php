<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;


// use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Mail;

use App\Models\Common_model;
use App\Models\Admin\SettingsModel;


class Appointment extends Controller
{
    private $commonmodel;
    public function __construct(){
        $this->commonmodel = new Common_model;
    }
    public function index(Request $request, $id=null){
        if($request->isMethod('POST')){
            // print_r($_POST); exit;

            $post['service_date'] = $_POST['service_date'];
            $post['st_id'] = $_POST['st_id'];
            $post['status'] = $_POST['status'];
            $post['update_at'] = date('Y-m-d H:i:s');
            $updated = $this->commonmodel->crudOperation('U','tbl_service_book_online',$post,['id'=>$id]);

            $record = $this->commonmodel->get_one_appointment_data($_POST['id']);
            $mailTo = $record->email;
            
            $mailData = [
                'client_name' => $record->name,
                'service_name' => $record->service_name.' ('.$record->variant.')',
                'selected_date' => Carbon::parse($record->service_date . ' ' . $record->serv_time)->format('d F Y \a\t h:i a'),
            ];

            if($updated){

                if($_POST['old_status'] != $_POST['status']){
                    if($_POST['status'] == 2){ // approved
                        Mail::send('emailer.approve_appoint', $mailData, function ($message) use ($mailTo){
                            $message->to($mailTo)
                                    ->subject('Your Appointment is Confirmed – Skin Canberra');
                        });
                        Mail::send('emailer.approve_appoint_admin', $mailData, function ($message) use ($mailData){
                            $message->to(ADMIN_MAIL_TO)
                                    ->subject('Booking Approved –'.$mailData['client_name']);
                        });
                    }else if($_POST['status'] == 3){ // Declined
                        Mail::send('emailer.declined_appoint', $mailData, function ($message) use ($mailTo){
                            $message->to($mailTo)
                                    ->subject('Update on Your Booking Request – Skin Canberra');
                        });
                        Mail::send('emailer.declined_appoint_admin', $mailData, function ($message) use ($mailData){
                            $message->to(ADMIN_MAIL_TO)
                                    ->subject('Booking Declined –'.$mailData['client_name']);
                        });
                    }

                }
                if($_POST['service_date'] != $_POST['old_service_date'] || $_POST['st_id'] != $_POST['old_st_id']){
                    Mail::send('emailer.reschedule_appoint', $mailData, function ($message) use ($mailTo){
                        $message->to($mailTo)
                                ->subject('Your Appointment Has Been Rescheduled – Skin Canberra');
                    });

                    $oldTime = $this->commonmodel->crudOperation('R1','tbl_service_time','',['st_id'=>$_POST['old_st_id']]);
                    $mailData['old_date'] = Carbon::parse($_POST['old_service_date'] . ' ' . $oldTime->serv_time)->format('d F Y \a\t h:i a');
                    Mail::send('emailer.reschedule_appoint_admin', $mailData, function ($message) use ($mailData){
                        $message->to(ADMIN_MAIL_TO)
                                ->subject('Reschedule Approved –'.$mailData['client_name']);
                    });
                }
                $request->session()->flash('message',['msg'=> 'Schedule updated successfully!','type'=>'success']);
            }else{
                $request->session()->flash('message',['msg'=>'Something went wrong. try again...','type'=>'danger']);
            }
            return redirect()->to('admin/appointment/'.$id);
        }

        if($id != null){
            $record = $this->commonmodel->get_one_appointment_data($id);
            if($record){
                $data['availableTimes'] = $this->commonmodel->get_available_times($record->st_id, $record->service_date);
                $data['record'] = $record;
            }
            
        }
        $data['settings'] = SettingsModel::where(['id'=>1])->first();
        // echo $data['settings']->weeklyHolidays; exit;
        $data['appointments'] = $this->commonmodel->get_appointments_data();
        // echo '<pre>';print_r($data['appointments']); exit;
        return view('admin.appointment.app_index', $data);
    }
    public function get_times_by_date(){
        $selectedDate = $_GET['date'] ?? '';
        $html = '';
        if($selectedDate){
            // Check if selected day is holiday
            $settings = SettingsModel::where('id', 1)->first();
            $weeklyHolidays = explode(',', $settings->weeklyHolidays);
            $weeklyHolidays = array_map('intval', $weeklyHolidays);
            $dayNumber = date('w', strtotime($selectedDate));
            if (in_array($dayNumber, $weeklyHolidays)) {
                echo '<option value="">No slots available (Weekly Holiday)</option>';
                exit;
            }

            // Normal available time fetch
            $availableTimes = $this->commonmodel->get_times_by_date($selectedDate);
            
            if($availableTimes->isNotEmpty()){
                foreach($availableTimes as $list){
                    $html .= '<option value="'.$list->st_id.'">'.$list->serv_time.'</option>';
                }
            }else{
                $html = '<option>No slots available</option>';
            }

        }
        echo $html; exit;
    }
    // ==========================Appointment List==============================
    public function appointment_list(Request $request, $id=null){
        if($request->isMethod('POST')){
            // echo '<pre>'; print_r($_POST); exit;
            $post['sv_id'] = $_POST['sv_id'];
            $post['vid'] = $_POST['vid'];
            $post['st_id'] = $_POST['st_id'];
            $post['service_date'] = $_POST['service_date'];
            $post['first_name'] = $_POST['first_name'];
            $post['last_name'] = $_POST['last_name'];
            $post['email'] = $_POST['email'];
            $post['country'] = 'AU';
            $post['phone'] = $_POST['phone'];
            $post['status'] = $_POST['status'];
            $post['added_at'] = date('Y-m-d H:i:s');

            if(!$id){
                $post['added_at'] = date('Y-m-d H:i:s');
                $inserted = $this->commonmodel->crudOperation('C','tbl_service_book_online',$post);
            }else{
                $post['update_at'] = date('Y-m-d H:i:s');
                $updated = $this->commonmodel->crudOperation('U','tbl_service_book_online',$post,['id'=>$id]);
            }
            if(isset($inserted)){
                $request->session()->flash('message',['msg'=>'Record added successfully!','type'=>'success']);
            }elseif(isset($updated)){
                $request->session()->flash('message',['msg'=>'Record updated successfully!','type'=>'success']);
            }else{
                $request->session()->flash('message',['msg'=>'Please Try After Sometimes...','type'=>'danger']);
            }

            return redirect()->to('admin/appointment-list');
        }
        if($id){
            $record = $this->commonmodel->get_one_appointment_data($id);
            if($record){
                $data['availableTimes'] = $this->commonmodel->get_available_times($record->st_id, $record->service_date);
                $data['variants'] = $this->commonmodel->crudOperation('RA','tbl_services_variants','',[['sv_id','=',$record->sv_id],['status','=',1]],['vid','DESC']);
                $data['record'] = $record;
            }
            // $data['record'] = $this->commonmodel->crudOperation('R1','tbl_service_book_online','',['id'=>$id]);
        }
        $data['listData'] = $this->commonmodel->get_appointment_list();
        $data['services'] = $this->commonmodel->crudOperation('RA','tbl_services','',['status'=>1],['sv_id','DESC']);
        return view('admin.appointment.appointment_list', $data);

    }
}