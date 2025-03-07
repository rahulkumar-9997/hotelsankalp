@extends('backend.layouts.master')
@section('title','Manage Hotel Rooms')
@section('main-content')
{{--@dd(Auth::check());--}}
@section('morecss')
<link href="{{asset('backend/assets//plugins/datatables/css/jquery.dataTables.css')}}" rel="stylesheet" type="text/css" media="screen"/>
<link href="{{asset('backend/assets/plugins/datatables/extensions/TableTools/css/dataTables.tableTools.min.css')}}" rel="stylesheet" type="text/css" media="screen"/>
<link href="{{asset('backend/assets/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css')}}" rel="stylesheet" type="text/css" media="screen"/>
<link href="{{asset('backend/assets/plugins/datatables/extensions/Responsive/bootstrap/3/dataTables.bootstrap.css')}}" rel="stylesheet" type="text/css" media="screen"/>    
@endsection
<section id="main-content" class=" ">
   <section class="wrapper main-wrapper">
      <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
         <div class="page-title">
            <div class="pull-left">
                <a href="{{route('hotel-room.add')}}" class="btn btn-warning btn-sm" style="margin-top: 20px;">Add New Room</a>             
            </div>
            <div class="pull-right hidden-xs">
               <ol class="breadcrumb">
                  <li>
                     <a href="{{route('dashboard')}}"><i class="fa fa-home"></i>Home</a>
                  </li>
                  
                  <li class="active">
                     <strong>Manage Hotel Room</strong>
                  </li>
               </ol>
            </div>
         </div>
      </div>
      <div class="clearfix"></div>
      <div class="col-lg-12">
         <section class="box ">
            <header class="panel_header">
               <h2 class="title pull-left">Manage Hotel Room</h2>
               <div class="actions panel_actions pull-right">
                  <i class="box_toggle fa fa-chevron-down"></i>
                  <i class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></i>
                  <i class="box_close fa fa-times"></i>
               </div>
            </header>
            <div class="content-body">
               <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                  @if (isset($data['hotel_room']) && $data['hotel_room']->count() > 0)
                     <table id="example-1" class="table table-striped dt-responsive display" cellspacing="0" width="100%">
                        <thead>
                           <tr>
                              <th style="width: 5%;">Sr. No.</th>
                              <th style="width: 10%;">Room Name</th>
                              <th style="width: 5%;">Room Price</th>
                              <th style="width: 30%;">Room Content</th>
                              <th>Image</th>
                              
                              <th>Action</th>
                           </tr>
                        </thead>
                        
                        <tbody>
                        @php
                           $sr_no = 1;
                        @endphp
                        @foreach($data['hotel_room'] as $hotel_room_row)
                           <tr>
                              <td>{{ $sr_no }}</td>
                              <td>{{ $hotel_room_row->title }}</td>
                              <td>{{ $hotel_room_row->room_price }}</td>
                              <td>{{ $hotel_room_row->details }}</td>
                              <td>
                                 @foreach ($hotel_room_row->images as $image) 
                                 <img src="{{ asset('hotel-sankalp-image-file/room-image/icon/'. $image->image_path ) }}" style="width: 50px;">
                                 @endforeach
                              </td>
                              <td style="display: flex;">
                                 <a href="{{url('hotel-room/edit/'.$hotel_room_row->id.'') }}">
                                    <span class="label label-orange"><i class="fa fa-pencil icon-xs"></i></span>   
                                 </a>
                                 
                                 <form method="POST" action="{{ route('hotel-room.delete', $hotel_room_row->id) }}" style="margin-left: 10px;">
                                       @csrf
                                       <input name="_method" type="hidden" value="DELETE">
                                          <a href="#" title="Delete" class="show_confirm">
                                          <span class="label label-danger"><i class="fa fa-trash icon-xs"></i></span>
                                       </a>
                                 </form>
                                                              
                              </td>
                             
                           </tr>
                           @php
                              $sr_no++; 
                           @endphp
                        @endforeach
                        </tbody>
                     </table>
                     @endif
                  </div>
               </div>
            </div>
         </section>
      </div>
      
      
      
   </section>
</section>
@endsection
@section('morescripts')
<script src="{{asset('backend/assets/plugins/datatables/js/jquery.dataTables.min.js')}}" type="text/javascript"></script>
<script src="{{asset('backend/assets/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js')}}" type="text/javascript"></script>
<script src="{{asset('backend/assets/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js')}}" type="text/javascript"></script>
<script src="{{asset('backend/assets/plugins/datatables/extensions/Responsive/bootstrap/3/dataTables.bootstrap.js')}}" type="text/javascript">

</script>
<script>
    $('.show_confirm').click(function(event) {
          var form =  $(this).closest("form");
          var name = $(this).data("name");
          event.preventDefault();
          swal({
              title: `Are you sure you want to delete this record?`,
              text: "If you delete this, it will be gone forever.",
              icon: "warning",
              buttons: true,
              dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
              form.submit();
            }
          });
      });
</script>
@endsection