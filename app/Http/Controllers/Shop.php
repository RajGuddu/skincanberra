<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Services\CartService;
use App\Models\Common_model;
use App\Traits\StripePaymentTrait;

class Shop extends Controller
{
    use StripePaymentTrait;

    private $commonmodel;
    private $cart;
    public function __construct(CartService $cart){
        $this->commonmodel = new Common_model;
        $this->cart = $cart;
    }

    public function add_to_cart(Request $request){
        if($request->isMethod('POST')){
           $pro_id = $request->input('pro_id') ;
           $attrid = $request->input('attrid');

           $product =  $this->commonmodel->get_product_for_cart($pro_id, $attrid);
           $insert = 0;
           if($product){
            // $this->cart->clear();
            $insert = $this->cart->add([
                'id'      => $product->pro_id.'-'.$attrid,
                'name'    => $product->pro_name,
                'quantity'     => 1,
                'price'   => $product->sp,
                'attributes' => ['pro_id'=>$pro_id,'attrid'=>$attrid,'image' => $product->image1, 'unit' => $product->unit, 'value' => $product->value]
            ]);
           }
            $cart_count = $this->cart->getTotalQuantity();
            $checkoutUrl = 'javascript:void(0)';
            if($cart_count){    
                $checkoutUrl = url('checkout');
            }
            if($insert){
                $response['success'] = true;
            }else{
                $response['success'] = false;
            }
            $response['cart_count'] = $cart_count;
            $response['checkoutUrl'] = $checkoutUrl;
            echo json_encode($response); exit;
        }
        return redirect()->to('/');
    }
    public function checkout(Request $request){
        
        $data=[];
        if($request->isMethod('POST')){
            $m_id = session('m_id');
            if($request->input('address_option') == 'new'){
                $rules = [
                        'name'=>'required',
                        'phone'=>'required|numeric',
                        'address'=>'required',
                ];
                $errorMessage = [
                    'name.required'=>'Your full name is required',
                    'phone.required'=>'Phone is required',
                    'phone.numeric'=> 'You must enter numeric value',
                    'address.required'=>'Address is required'
                ];
                    
                $validation = $this->validate($request, $rules, $errorMessage);
                if($validation){
                    $post['m_id'] = $m_id;
                    $post['name'] = $request->input('name');
                    $post['phone'] = $request->input('phone');
                    $post['address'] = $request->input('address');
                    $post['status'] = 1;
                    $post['added_at'] = date('Y-m-d H:i:s');

                    $add_id = $this->commonmodel->crudOperation('C','tbl_member_address',$post);
                    // print_r($_POST); exit;
                    
                }
            }else{
                $add_id = $request->input('address_option');
            }

            $orderId = 'OD'.time().mt_rand(1000, 9999);
            $cart = cart();
            $totalitems = $cart->getTotalQuantity();
            $cartdata = $cart->getItems();
            $total = $cart->getTotal();
            if($totalitems < 1){
                $request->session()->flash('message',['msg'=> 'Something went wrong. Please Try Again...','type'=>'danger']);
                return redirect()->to(url('checkout'));
            }else{
                $k = 0;
                $product_details = array();
                foreach($cartdata as $data){
                    $product_details[$k]['id'] = $data['id'];
                    $product_details[$k]['name'] = $data['name'];
                    $product_details[$k]['price'] = $data['price'];
                    $product_details[$k]['quantity'] = $data['quantity'];
                    $product_details[$k]['subtotal'] = $data->getPriceSum();
                    $product_details[$k]['attributes'] = $data['attributes'];
                    $k++;
                }
                $orderData = array(
                    'm_id'=> $m_id,
                    'order_id' => $orderId,
                    'add_id' => $add_id,
                    
                    'product_details' => json_encode($product_details),
                    'total_qty' => $totalitems,
                    'net_total' => $total,
                    'orderdate' => date('Y-m-d H:i:s'),
                    'status' => 1
                );
                $insertId = $this->commonmodel->crudOperation('C','tbl_product_order',$orderData);
                if($insertId){
                    $cart->clear();
                    /*$member_info = $this->commonmodel->crudOperation('R1','tbl_member','',['m_id'=>$m_id]);
                    $sessionData = array(
                        'm_id' => $member_info->m_id,
                        'name' => $member_info->name,
                        'email' => $member_info->email,
                        'phone' => $member_info->phone,
                        'address' => $member_info->address,
                        'image' => $member_info->image,
                        'privilege_id' => $member_info->privilege_id,
                        'status' => $member_info->status,
                        'memberLogin' => true,
                    );
                    $request->session()->put($sessionData);*/
                    $request->session()->flash('message',['msg'=> 'Your Items placed successfully','type'=>'success']);
                    
                }else{
                    $request->session()->flash('message',['msg'=> 'Something went wrong. Please Try Again...','type'=>'danger']);
                }
                return redirect()->to(url('member-orders'));

            }
        }
        if(session()->has('memberLogin')){
            $data['addresses'] = $this->commonmodel->crudOperation('RA','tbl_member_address','',[['m_id','=',session('m_id')],['status','=',1]]);
        }
        return view('checkout',$data);
    }
    public function remove_item(Request $request, $id){
        if($this->cart->remove($id)){
            $request->session()->flash('message',['msg'=>'Item removed successfully!','type'=>'success']);
        }else{
            $request->session()->flash('message',['msg'=>'Something went wrong!','type'=>'danger']);
        }
        return redirect()->to('/checkout');
    }
    /*********************teting****************************** */
    public function pay(){
        return view('stripe_payment_test');
    }
    public function payment(Request $request)
    {
        $session = $this->createStripeCheckout([
            'amount'      => 5000, // 50 INR (in paise)
            'name'        => 'Service Charge',
            'description' => 'Waxing (Side Locks)',
            'images'      => [url('assets/uploads/images/svariant-qMcBCv49.webp')],
            'metadata'    => [
                                'order_id' => 1234,
                                'user_id'  => 56,
                                'my_note'  => "This is demo note",
                            ],
            'success_url' => url('/stripe-success') . '?sid={CHECKOUT_SESSION_ID}',
            'cancel_url'  => url('/stripe-cancel'),
        ]);
        /*\Stripe\Stripe::setApiKey(STRIPE_SECRET);
        $session = \Stripe\Checkout\Session::create([
            'payment_method_types' => ['card'],
            'line_items' => [[
                'price_data' => [
                    'currency' => 'inr',
                    'product_data' => [
                        'name' => 'Service Charge',
                        'description' => 'Waxing (Side Locks)',
                        'images' => ['http://localhost/laravel/skincanberra/public/assets/uploads/images/svariant-AoeDN62a.webp'],
                    ],
                    'unit_amount' => 5000, // 50 INR (5000 paise)
                ],
                'quantity' => 1,
            ]],
            'mode' => 'payment',
            'metadata' => [
                'order_id' => 1234,
                'user_id'  => 56,
                'my_note'  => "This is demo note",
            ],
            'success_url' => url('/stripe-success') . '?session_id={CHECKOUT_SESSION_ID}',
            'cancel_url' => url('/stripe-cancel'),
        ]); */
        // echo '<pre>'; var_dump($session); exit;

        return redirect($session->url);
    }
    public function _success(Request $request){
        $sessionId = $request->get('sid');
        
        $result = $this->verifyStripeSuccess($sessionId);

        if($result['success'] && $result['status'] == 'succeeded'){
            echo '<pre>'; print_r($result);
            // return redirect()->to(url('thank-you'));

        }else{
            echo 'Payment fail';
        }


        /*\Stripe\Stripe::setApiKey(STRIPE_SECRET);

        $session = \Stripe\Checkout\Session::retrieve($sessionId);

        if ($session->payment_status !== 'paid') {
            return redirect('/'); // refresh रोक दिया
        }

        $paymentIntent = \Stripe\PaymentIntent::retrieve($session->payment_intent);
        echo '<pre>'; var_dump($paymentIntent); 

        $order_id = $session->metadata->order_id;
        $user_id  = $session->metadata->user_id;
        $note     = $session->metadata->my_note;
        echo $order_id.' '.$user_id.' '.$note;
        return $paymentIntent->status;*/
    }
    // public function success(){
    //     echo 'Payment Successful';
    // }
    public function cancel(){
        echo 'payment cancel';
    }
    public function testcart1(){
        // $product =  $this->commonmodel->get_product_for_cart(2, 3);
        // echo '<pre>';
        // print_r($product); exit;
        // $this->cart->clear();
        $this->cart->add([
            'id'      => 4,
            'name'    => 'mango',
            'quantity'     => 1,
            'price'   => 100,
            'attributes' => ['size' => 'L', 'color' => 'Red']
        ]);
        // $cart->update(1,2);
        $items = $this->cart->getItems();
        echo '<pre>';print_r($items);
        // echo $items[1]['name'];
        echo $this->cart->getSubTotal();
    }
    public function view_cart(){
        // $this->cart->clear();
        $items = $this->cart->getItems();
        echo '<pre>';print_r($items);
    }
}