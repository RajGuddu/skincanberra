@extends('admin._layout.master')
@section('content')

<div class="app-content pt-3 p-md-3 p-lg-4">
    <div class="container-fluid">
        <div class="row g-3 mb-4 align-items-center justify-content-between">
            <div class="col-auto">
                <h1 class="app-page-title mb-4">Appointment List</h1>
            </div>
            <div class="col-auto">
            <form action="{{ url()->current() }}" method="post" class="mb-3">
                @csrf
                <div class="input-group" style="max-width:400px;">
                    <input type="text" name="search" class="form-control" placeholder="Search by name or email"
                        value="{{ old('search', $search ?? '') }}">
                    <button class="btn btn-primary" type="submit">Search</button>
                    <a href="{{ url()->current() }}" class="btn btn-secondary ms-2">Reset</a>
                    <a href="{{ url()->current() }}" class="btn btn-secondary ms-2">Add</a>
                </div>
            </form>
            </div>

        </div>
        <?php if(Session::has('message')){ 
			echo alertBS(session('message')['msg'], session('message')['type']);
		} ?>

        <div class="row">
            <div class="col-lg-8">
                <div class="app-card app-card-orders-table shadow-sm mb-5">
                    <div class="app-card-body">
                        <div class="table-responsive">
                            <table class="table app-table-hover mb-0 text-left">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Service Date</th>
                                        <th>Client Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Service</th>
                                        <th>Duration</th>
                                        <th>Price</th>
                                        <!-- <th>Message</th> -->
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($listData as $index => $item)
                                        <tr>
                                            <td class="cell">{{ $index + 1 }}</td>
                                            <td class="cell">{{ \Carbon\Carbon::parse($item->service_date . ' ' . $item->serv_time)->format('d M Y \a\t h:i a') }}</td>
                                            <td class="cell">{{ $item->name }}</td>
                                            <td class="cell">{{ $item->email }}</td>
                                            <td class="cell">{{ $item->phone }}</td>
                                            <td class="cell">{{ $item->service_name.' ('.$item->variant.')' }}</td>
                                            <td class="cell">{{ $item->duration ?? 0 }} Minutes</td>
                                            <td class="cell">${{ $item->price }}</td>
                                            <td class="cell">
                                                @if($item->status == 1)
                                                    <span class="badge bg-secondary">Pending</span>
                                                @elseif($item->status == 2)
                                                    <span class="badge bg-primary">Approved</span>
                                                @elseif($item->status == 3)
                                                    <span class="badge bg-danger">Declined</span>
                                                @elseif($item->status == 4)
                                                    <span class="badge bg-success">Complete</span>
                                                @endif
                                            </td>
                                            <td></td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="10" class="text-center text-danger">No records found!</td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div><!--//table-responsive-->
                    </div><!--//app-card-body-->
                </div><!--//app-card-->
            </div>
            <div class="col-lg-4">
                <div class="card shadow-sm">
                <div class="card-header bg-light fw-bold">
                    Edit Appointment
                </div>
                <div class="card-body">
                    <form action="{{ url()->current() }}" id="appointmentForm" method="post">
                    @csrf
                    <input type="hidden" name="id" value="{{ $record->id ?? '' }}">
                    
                    <!-- Client Info Box -->
                    <div class="p-3 rounded mb-3 shadow-sm"
                        style="background: #087e5eff; color: #e3fff8; border-left: 4px solid #4ef6c7;">

                        <h5 class="mb-1" style="font-weight:600; color:#4ef6c7;">
                            {{ $record->first_name ?? '' }} {{ $record->last_name ?? '' }}
                        </h5>

                        <div style="font-size:14px; line-height:1.5;">
                            
                            <span style="color:#b8f9e5;">Phone:</span> {{ $record->phone ?? 'N/A' }} <br>
                            <span style="color:#b8f9e5;">Email:</span> {{ $record->email ?? 'N/A' }} <br>
                            <span style="color:#b8f9e5;">Service:</span> {{ $record->service_name ?? 'N/A' }} ({{ $record->variant ?? 'N/A' }})<br>
                            <span style="color:#b8f9e5;">Duration :</span> {{ $record->duration ?? 'N/A' }} Minutes<br>
                            <span style="color:#b8f9e5;">Price :</span> ${{ $record->price ?? 'N/A' }}

                        </div>
                    </div>

                    <div class="mb-3">
                    <label class="form-label">Service Date</label>
                    <input type="date" name="service_date" value="{{ old('service_date', $record->service_date ?? '') }}" id="serviceDate" class="form-control">
                    <input type="hidden" name="old_service_date" value="{{ $record->service_date ?? '' }}" >
                    </div>

                    <div class="mb-3">
                    <label class="form-label">Service Time</label>
                    <select id="serviceTime" name="st_id" class="form-select">
                        @if(isset($availableTimes) && $availableTimes->isNotEmpty())
                        @foreach($availableTimes as $list)
                        @php 
                        $selected = '';
                        if(isset($record) && $record->st_id == $list->st_id){
                            $selected = 'selected';
                        }
                        @endphp
                        <option value="{{ $list->st_id }}" {{ $selected }}>{{ $list->serv_time }}</option>
                        @endforeach
                        
                        @endif
                    </select>
                    <input type="hidden" name="old_st_id" value="{{ $record->st_id ?? '' }}" >

                    </div>

                    <div class="mb-3">
                    <label class="form-label">Status</label>
                    <select id="status" class="form-select" name="status">
                        <option value="1" {{ (isset($record) && $record->status == 1)?'selected':'' }}>Pending</option>
                        <option value="2" {{ (isset($record) && $record->status == 2)?'selected':'' }}>Approved</option>
                        <option value="3" {{ (isset($record) && $record->status == 3)?'selected':'' }}>Declined</option>
                        <option value="4" {{ (isset($record) && $record->status == 4)?'selected':'' }}>Completed</option>
                    </select>
                    <input type="hidden" name="old_status" value="{{ $record->status ?? '' }}" >
                    </div>

                    <button class="btn btn-primary  text-white" id="saveService">Save</button>
                    <a href="{{ url('admin/appointment') }}" class="btn btn-secondary text-white" id="">Cancel</a>
                    </form>
                </div>
                </div>
            </div>

        </div>

    </div><!--//container-fluid-->
</div><!--//app-content-->

@endsection
