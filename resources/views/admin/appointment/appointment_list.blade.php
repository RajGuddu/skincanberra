@extends('admin._layout.master')
@section('content')
<style>
    .table-fixed {
        width: 100%;
        table-layout: fixed;   
        word-wrap: break-word; 
    }
</style>

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
                    <a href="{{ url('admin/appointment-list') }}" class="btn btn-secondary ms-2">Reset</a>
                    <a href="{{ url('admin/appointment-list').'?add=1' }}" class="btn btn-secondary ms-2">Add</a>
                </div>
            </form>
            </div>

        </div>
        <?php if(Session::has('message')){ 
			echo alertBS(session('message')['msg'], session('message')['type']);
		} ?>
        @php $tableCol = 12; $formCol=0; $formClass="d-none";
        if(request()->has('add') || isset($record->id)){
            $tableCol = 8; $formCol = 4; $formClass = '';
        }
        @endphp
        <div class="row">
            <div class="col-lg-{{ $tableCol }}">
                <div class="app-card app-card-orders-table shadow-sm mb-5">
                    <div class="app-card-body">
                        <!-- <div class="table-responsive"> -->
                            <table class="table app-table-hover mb-0 text-left table-fixed">
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
                                            @php $tdStyle = ''; if(isset($record) && $record->id == $item->id) $tdStyle = 'background-color:#d4edda !important;'; @endphp
                                            <td style="{{ $tdStyle }}">
                                                <a class="btn-sm app-btn-secondary" href="{{ url('admin/appointment-list/'.$item->id) }}">Edit</a>
									            <a class="btn-sm app-btn-secondary" onclick="return confirm('Are u sure?')" href="{{ url('admin/delete_appointment/'.$item->id) }}">Delete</a>
                                            </td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="10" class="text-center text-danger">No records found!</td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        <!-- </div>//table-responsive -->
                    </div><!--//app-card-body-->
                </div><!--//app-card-->
            </div>
            <div class="col-lg-{{ $formCol }} {{ $formClass }}">
                <div class="card shadow-sm">
                    <div class="card-header bg-light fw-bold">
                        {{ (isset($record->id)) ?'Edit':'Add'}} Appointment
                    </div>
                    <div class="card-body">
                        <form action="{{ url()->current() }}" id="appointmentForm" method="post">
                        @csrf
                        <input type="hidden" name="id" value="{{ $record->id ?? '' }}">
                        <div class="mb-3">
                            <div class="row">
                                <div class="col-md-6">
                                    <label class="form-label">First Name <span class="text-danger">*</span></label>
                                    <input type="text" name="first_name" value="{{ old('first_name', $record->first_name ?? '') }}" id="first_name" class="form-control">
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Last Name</label>
                                    <input type="text" name="last_name" value="{{ old('last_name', $record->last_name ?? '') }}" id="last_name" class="form-control">
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email <span class="text-danger">*</span></label>
                            <input type="email" name="email" value="{{ old('email', $record->email ?? '') }}" id="email" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Phone number <span class="text-danger">*</span></label>
                            <input type="number" name="phone" value="{{ old('phone', $record->phone ?? '') }}" class="form-control" id="phone">
                            @error('phone') <span class="text-danger"> {{ $message }} </span> @enderror
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Service Date <span class="text-danger">*</span></label>
                            <input type="date" name="service_date" value="{{ old('service_date', $record->service_date ?? '') }}" id="serviceDate" class="form-control">
                            <input type="hidden" name="old_service_date" value="{{ $record->service_date ?? '' }}" >
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Service Time <span class="text-danger">*</span></label>
                            <select id="serviceTime" name="st_id" class="form-select">
                                <option value="">Select Time</option>
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
                            <label class="form-label">Service <span class="text-danger">*</span></label>
                            <select id="sv_id" name="sv_id" class="form-select" onchange="getVariants(this);">
                                <option value="">Select service</option>
                                @if(isset($services) && $services->isNotEmpty())
                                @foreach($services as $service)
                                @php
                                    $selected = '';
                                    if(isset($record) && $record->sv_id == $service->sv_id) $selected = 'selected'; @endphp
                                <option value="{{ $service->sv_id }}" {{ $selected }}>{{ $service->service_name }} </option>
                                @endforeach
                                @endif
                            </select>
                            <input type="hidden" name="old_sv_id" value="{{ $record->sv_id ?? '' }}" >
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Select variant <span class="text-danger">*</span></label>
                            <select class="form-select border-dark" id="vid" name="vid">
                                <option value="">Please select variants!</option>
                                @if(isset($variants) && $variants->isNotEmpty())
                                @foreach($variants as $variant)
                                @php
                                    $selected = '';
                                    if(isset($record) && $record->vid == $variant->vid) $selected = 'selected'; @endphp
                                <option value="{{ $variant->vid }}" {{ $selected }}>{{ $variant->v_name.' $'.$variant->sp }} </option>
                                @endforeach
                                @endif
                            </select>
                            
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
                        <a href="{{ url('admin/appointment-list') }}" class="btn btn-secondary text-white" id="">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>

        </div>

    </div><!--//container-fluid-->
</div><!--//app-content-->

<script>
    $(document).ready(function() {

        $('#serviceDate').on('change', function () {
            let selectedDate = $(this).val();

            if (selectedDate === '') return;

            // Show loading
            $('#serviceTime').html('<option>Loading...</option>');

            $.ajax({
                url: "{{ url('admin/get-times-by-date') }}",
                type: "GET",
                data: { date: selectedDate },
                success: function (response) {

                    // Clear dropdown
                    $('#serviceTime').empty();

                    if (response.length > 0) {
                    $('#serviceTime').html(response);
                        
                    } else {
                    $('#serviceTime').append('<option>No slots available</option>');
                    }
                }
            });
        });

        $('#saveService').on('click', function (e) {
            e.preventDefault(); // stop form submit

            let isValid = true;
            let errors = [];

            // Get values
            let firstName = $('#first_name').val().trim();
            let email     = $('#email').val().trim();
            let phone     = $('#phone').val().trim();
            let serviceDate = $('#serviceDate').val().trim();
            let serviceTime = $('#serviceTime').val();
            let service = $('#sv_id').val();
            let variant = $('#vid').val();
            let status = $('#status').val();

            // Reset previous errors
            $('.is-invalid').removeClass('is-invalid');

            if (firstName == "") {
                isValid = false;
                errors.push("Please enter first name.");
                $('#first_name').addClass('is-invalid');
            }
            if (email === "") {
                isValid = false;
                errors.push("Email is required!");
                $('#email').addClass('is-invalid');
            } else if (!validateEmail(email)) {
                isValid = false;
                errors.push("Invalid email format!");
                $('#email').addClass('is-invalid');
            }
            if (phone == "") {
                isValid = false;
                errors.push("Please enter phone Number.");
                $('#phone').addClass('is-invalid');
            }
            if (service == "") {
                isValid = false;
                errors.push("Please select service.");
                $('#sv_id').addClass('is-invalid');
            }
            if (variant == "") {
                isValid = false;
                errors.push("Please select variant.");
                $('#vid').addClass('is-invalid');
            }
            // Validate Date
            if (serviceDate === "") {
                isValid = false;
                errors.push("Please select service date.");
                $('#serviceDate').addClass('is-invalid');
            }

            // Validate Time
            if (serviceTime === "" || serviceTime === null) {
                isValid = false;
                errors.push("Please select service time.");
                $('#serviceTime').addClass('is-invalid');
            }

            // Validate Status
            if (status === "" || status === null) {
                isValid = false;
                errors.push("Please select status.");
                $('#status').addClass('is-invalid');
            }

            // Show errors if any
            if (!isValid) {
                let errorMsg = errors.join("<br>");
                showErrorToast(errorMsg);  // Optional toast message (below)
                return;
            }

            // All good → submit form
            $('#appointmentForm').submit();
        });

    });
    function validateEmail(email) {
        let re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(email);
    }
    function showErrorToast(msg) {
        let toast = `
            <div class="toast align-items-center text-bg-danger border-0 show"
                style="position: fixed; top: 20px; right: 20px; z-index: 9999;">
                <div class="d-flex">
                    <div class="toast-body">${msg}</div>
                    <button type="button" class="btn-close btn-close-white me-2 m-auto"
                            data-bs-dismiss="toast"></button>
                </div>
            </div>`;

        $('body').append(toast);

        setTimeout(() => {
            $('.toast').remove();
        }, 3000);
    }
    function getVariants(obj){
        // alert(obj.value);
        var sv_id = obj.value;
        if(sv_id){
            $.ajax({
                url: "{{ url('get_variants_by_ajax') }}",
                type: "POST",
                dataType: "json",
                
                data: {
                    _token: "{{ csrf_token() }}",
                    sv_id: sv_id,
                    
                },
                beforeSend: function() {
                    $('#ajax-loader').show();
                },
                success: function(response) {
                    if (response.success) {
                        console.log(response.html);
                        $('#vid').html(response.html);
                        // toastr.success("Product added into cart");
                    }else{
                        toastr.error("Soory, Something went wrong!");
                    }
                },
                error: function(xhr) {
                    console.error(xhr.responseText);
                },
                complete: function() {
                    $('#ajax-loader').hide();
                }
            });
        }
    }
</script>

@endsection
