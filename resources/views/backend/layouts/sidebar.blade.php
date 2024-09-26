<div class="page-sidebar ">
   <!-- MAIN MENU - START -->
   <div class="page-sidebar-wrapper" id="main-menu-wrapper">
      <!-- USER INFO - START -->
      <div class="profile-info row">
         <div class="profile-image col-md-4 col-sm-4 col-xs-4">
            <a href="{{route('manage-profile')}}">
            @if(Auth::user()->profile_img)
               <img src="{{ asset('hotel-sankalp-image-file/profile-img/' . Auth::user()->profile_img) }}" class="img-responsive img-circle database">
            @else
               <img src="{{asset('backend/assets/images/profile-hospital.jpg')}}" class="img-responsive img-circle not">
            @endif
            </a>
         </div>
         <div class="profile-details col-md-8 col-sm-8 col-xs-8">
            <h3>
               <a href="{{route('manage-profile')}}">{{Auth::user()->name}}</a>
              
            </h3>
            <p class="profile-title">{{Auth::user()->email}}</p>
         </div>
      </div>
      <!-- USER INFO - END -->
      <ul class='wraplist'>
         <li class="{{ request()->is('dashboard') ? 'open' : ''}}"> 
            <a href="{{route('dashboard')}}">
            <i class="fa fa-dashboard"></i>
            <span class="title">Dashboard</span>
            </a>
         </li>
         <li class="">
         @if(Auth::user()->roles->contains('name', 'admin'))
            <a href="javascript:;">
               <i class="fa fa-user"></i>
            <span class="title">Manage User</span>
            </a>
            <ul class="sub-menu" >
               <li>
                  <a class="" href="{{ route('users') }}"> User</a>
               </li>
               <li>
                  <a class="" href="{{ route('roles.index') }}">Roles</a>
               </li>
               <li>
                  <a class="" href="{{ route('permissions.index') }}">Permissions</a>
               </li>
               
            </ul>
         </li>
         @endif
         <li class="{{ request()->is('banner') ? 'open' : ''}} {{ request()->is('banner/add') ? 'open' : ''}} ">
            <a href="javascript:;">
            <i class="fa fa-suitcase"></i>
            <span class="title">Manage Banner</span>
            </a>
            <ul class="sub-menu" >
               <li>
                  <a class="" href="{{route('banner')}}"> Banner</a>
               </li>
               <li>
                  <a class="" href="{{route('banner.add')}}"> Add Banner</a>
               </li>
               
               
            </ul>
         </li>	

         <li class="{{ request()->is('facilities') ? 'open' : ''}} {{ request()->is('facilities/add') ? 'open' : ''}} ">
            <a href="javascript:;">
            <i class="fa fa-building-o"></i>
            <span class="title">Manage Hotel Facilities</span>
            </a>
            <ul class="sub-menu" >
               <li>
                  <a class="" href="{{route('hotel-facilities')}}"> Facilities</a>
               </li>
               <li>
                  <a class="" href="{{route('hotel-facilities.add')}}"> Add Facilities</a>
               </li>
               
               
            </ul>
         </li>	
         <li class="{{ request()->is('hotel-room') ? 'open' : ''}} {{ request()->is('hotel-room/add') ? 'open' : ''}} ">
            <a href="javascript:;">
            <i class="fa fa-home"></i>
            <span class="title">Manage Hotel Room</span>
            </a>
            <ul class="sub-menu" >
               <li>
                  <a class="" href="{{route('hotel-room')}}"> Hotel Room</a>
               </li>
               <li>
                  <a class="" href="{{route('hotel-room.add')}}"> Add Hotel Room</a>
               </li>
               
               
            </ul>
         </li>	
         
         
      </ul>
   </div>
   <div class="project-info">
      <div class="block1">
         <div class="data">
         <div class="clock">
            <div id="Date"></div>
            <ul>
               <li id="hours"></li>
               <li id="point">:</li>
               <li id="min"></li>
               <li id="point">:</li>
               <li id="sec"></li>
            </ul>
         </div>
      </div>
   </div>
   </div>
</div>