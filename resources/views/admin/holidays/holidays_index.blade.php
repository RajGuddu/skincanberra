@extends('admin._layout.master')
@section('content')
<style>
    .table-fixed {
        width: 100%;
        /* table-layout: fixed;    */
        word-wrap: break-word; 
    }
</style>

<div class="app-content pt-3 p-md-3 p-lg-4">
    <div class="container-fluid">
        <div class="row g-3 mb-4 align-items-center justify-content-between">
            <div class="col-auto">
                <h1 class="app-page-title mb-4">Holiday List</h1>
            </div>
            <div class="col-auto">
                <?php /* <form action="{{ url('admin/search_holiday') }}" method="post" class="mb-3">
                    @csrf
                    <div class="input-group" style="max-width:400px;">
                        <input type="text" name="search" class="form-control" placeholder="Search by course name"
                            value="{{ old('search', session('search')) }}" required>
                        <button class="btn btn-primary" type="submit">Search</button>
                        <a href="{{ url('admin/c_search_reset') }}" class="btn btn-secondary ms-2">Reset</a>
                        
                    </div>
                </form> */ ?>
                <a href="{{ url('admin/holidays').'?add=1' }}" class="btn btn-secondary ms-2">Add</a>
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
                        <div class="table-responsive">
                            <table class="table app-table-hover mb-0 text-left table-fixed">
                                <thead>
                                    <tr>
                                        <th >#</th>
                                        <th>Occasion Name</th>
                                        <th>Date From</th>
                                        <th>Date To</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if(isset($listData) && $listData->isNotEmpty())
                                    @foreach($listData as $index => $item)
                                        <tr>
                                            <td class="">{{ $index + 1 }}</td>
                                            <td class="">{{ $item->h_name }}</td>
                                            <td class="" >
                                                {{ date('d-M-Y',strtotime($item->date_from)) }}
                                            </td>
                                            <td class="">
                                                {{ date('d-M-Y',strtotime($item->date_to)) }}
                                            </td>
                                            
                                            <td class="">
                                                @if($item->status == 1)
                                                    <span class="badge bg-success">Active</span>
                                                @else
                                                    <span class="badge bg-danger">Inactive</span>
                                                @endif
                                            </td>
                                            @php $tdStyle = ''; 
                                                if(isset($record) && $record->id == $item->id) 
                                                    $tdStyle = "background-color:#d4edda !important;"; 
                                            @endphp
                                            <td style="{{ $tdStyle }}">
                                                <a class="btn-sm app-btn-secondary" href="{{ url('admin/holidays/'.$item->id) }}">Edit</a>
                                               
									            <a class="btn-sm app-btn-secondary" onclick="return confirm('Are u sure?')" href="{{ url('admin/delete_holiday/'.$item->id) }}">Delete</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    @else
                                        <tr>
                                            <td colspan="7" class="text-center text-danger">No records found!</td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div><!-- table-responsive -->
                    </div><!--//app-card-body-->
                </div><!--//app-card-->
            </div>
            <div class="col-lg-{{ $formCol }} {{ $formClass }}">
                <div class="card shadow-sm">
                    <div class="card-header bg-light fw-bold">
                        {{ (isset($record->id)) ?'Edit':'Add'}} Holiday
                    </div>
                    <div class="card-body">
                        <form action="{{ url()->current() }}" id="CourseForm" method="post" enctype="multipart/form-data">
                        @csrf
                        <!-- <input type="hidden" name="formname" value="appoint"> -->
                        <input type="hidden" name="id" value="{{ $record->id ?? '' }}">
                        <!-- <input type="hidden" name="total_amount" id="total_amount" value="{{ $record->total_amount ?? 0 }}"> -->
                        <div class="mb-3">
                            <label class="form-label">Occasion Name <span class="text-danger">*</span></label>
                            <input type="text" name="occasion_name" value="{{ old('h_name', $record->h_name ?? '') }}" id="h_name" class="form-control">
                            @error('occasion_name') <span class="text-danger"> {{ $message }} </span> @enderror
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Date From<span class="text-danger">*</span></label>
                            <input type="date" name="date_from" id="date_from" class="form-control" value="{{ old('date_from', $record->date_from ?? '') }}">
                            @error('date_from') <span class="text-danger"> {{ $message }} </span> @enderror
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Date To <span class="text-danger">*</span></label>
                            <input type="date" name="date_to" value="{{ old('date_to', $record->date_to ?? '') }}" class="form-control" id="date_to">
                            @error('date_to') <span class="text-danger"> {{ $message }} </span> @enderror
                        </div>

                        <div class="mb-3">
                        <label class="form-label">Status</label>
                        <select id="status" class="form-select" name="status">
                            <option value="1" {{ (isset($record) && $record->status == 1)?'selected':'' }}>Active</option>
                            <option value="0" {{ (isset($record) && $record->status == 0)?'selected':'' }}>Inactive</option>
                        </select>
                        <input type="hidden" name="old_status" value="{{ $record->status ?? '' }}" >
                        </div>

                        <button type="submit" class="btn btn-primary  text-white" id="">Save</button>
                        <a href="{{ url('admin/holidays') }}" class="btn btn-secondary text-white" id="">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>

        </div>

    </div><!--//container-fluid-->
</div><!--//app-content-->


<script>
    $(document).ready(function() {
        $('#date_to, #date_from').on('change', function() {
            var fromDate = new Date($('#date_from').val());
            var toDate = new Date($('#date_to').val());

            if(fromDate && toDate) {
                if(toDate < fromDate) {
                    alert('Date To cannot be before Date From!');
                    $('#date_to').val(''); 
                }
            }
        });
    });
</script>


@endsection
