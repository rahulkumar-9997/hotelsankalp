@extends('frontend.layouts.master')
@section('title','Hotel Sankalp :: Our Room')
@section('description', 'Hotel Sankalp')
@section('keywords', 'Qulity Room , Best Accommodation Hotel in varanasi, Wellness & Spa in varanasi, Varanasi Hotel, Luxury Hotel in Varanasi, Hotel sankalp facilities') 
@section('main-content')
    <section class="breadcrumb-area d-flex align-items-center" style="background-image:url('{{asset('fronted/hotelsankalp-img/breadcrub/bread-2.jpg') }}')">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-12 col-lg-12">
                    <div class="breadcrumb-wrap text-center">
                        <div class="breadcrumb-title">
                            <h2>Our Room</h2>    
                            <div class="breadcrumb-wrap">
                        
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{URL::to('/')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Our Room</li>
                            </ol>
                        </nav>
                    </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <div class="overlay"></div>
    </section>
    <!-- room-area-->
    @if (isset($data['hotel_room']) && $data['hotel_room']->count() > 0)
      <section id="services" class="our-room services-area pt-120 pb-90">
         <div class="container">
            <div class="row justify-content-md-center">
               @php
                  $sr_no = 1;
               @endphp
               @foreach($data['hotel_room'] as $hotel_room_row)
                  <div class="col-xl-6 col-md-6">
                     <div class="single-services mb-30 banner-slider">
                        <div class="services-thumb slider slider-for slider-for-big_{{$sr_no}}">
                           @foreach ($hotel_room_row->images as $image) 
                              <div class="slider-banner-image">
                                 <img src="{{ asset('hotel-sankalp-image-file/room-image/large/'. $image->image_path ) }}" alt="{{ $hotel_room_row->title }}">
                              </div>
                           @endforeach
                           
                        </div>
                        <div class="slider slider-nav thumb-image slider_room_thumb slider-nav-thumb_{{ $sr_no }}">
                           @foreach ($hotel_room_row->images as $image)
                              <div class="thumbnail-image">
                                 <div class="thumbImg">
                                    <img src="{{ asset('hotel-sankalp-image-file/room-image/thumb/'. $image->image_path ) }}" alt="{{ $hotel_room_row->title }}">
                                 </div>
                              </div>
                           @endforeach
                           
                        </div>
                        <div class="services-content">
                           
                           <h4><a href="#">{{ $hotel_room_row->title }}</a></h4>
                           <p>
                              {!! strip_tags($hotel_room_row->details) !!}
                           </p>
                           <div class="icon">
                              <ul>
                                 <li><img src="{{asset('fronted/img/icon/sve-icon1.png')}}" alt="{{ $hotel_room_row->title }}"></li>
                                 <li><img src="{{asset('fronted/img/icon/sve-icon2.png')}}" alt="{{ $hotel_room_row->title }}"></li>
                                 <li><img src="{{asset('fronted/img/icon/sve-icon3.png')}}" alt="{{ $hotel_room_row->title }}"></li>
                                 <li><img src="{{asset('fronted/img/icon/sve-icon4.png')}}" alt="{{ $hotel_room_row->title }}"></li>
                                 <li><img src="{{asset('fronted/img/icon/sve-icon5.png')}}" alt="{{ $hotel_room_row->title }}"></li>
                                 <li><img src="{{asset('fronted/img/icon/sve-icon6.png')}}" alt="{{ $hotel_room_row->title }}"></li>
                              </ul>
                           </div>
                           <div class="day-book">
                              <ul>
                                 <li>Rs.{{ $hotel_room_row->room_price }}/ + Tax</li>
                                 <li><a href="#bookaroom">Book Now</a></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
                  @php
                     $sr_no++; 
                  @endphp
               @endforeach
               <!-- <div class="col-xl-6 col-md-6">
                  <div class="single-services mb-30 banner-slider">
                     <div class="services-thumb slider slider-for slider-for-big_2">
                        <div class="slider-banner-image">
                           <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/super_delux_room/super_delux_room_6.jpg')}}" alt="img">
                        </div>
                        <div class="slider-banner-image">
                           <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/super_delux_room/super_delux_room_5.jpg')}}" alt="img">
                        </div>
                        <div class="slider-banner-image">
                           <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/super_delux_room/super_delux_room_4.jpg')}}" alt="img">
                        </div>
                        <div class="slider-banner-image">
                           <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/super_delux_room/super_delux_room_3.jpg')}}" alt="img">
                        </div>
                        <div class="slider-banner-image">
                           <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/super_delux_room/super_delux_room_2.jpg')}}" alt="img">
                        </div>
                        <div class="slider-banner-image">
                           <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/super_delux_room/super_delux_room_1.jpg')}}" alt="img">
                        </div>
                        
                     </div>
                     <div class="slider slider-nav thumb-image slider_room_thumb slider-nav-thumb_2">
                        <div class="thumbnail-image">
                           <div class="thumbImg">
                              <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/super_delux_room/super_delux_room_6.jpg')}}" alt="img">
                           </div>
                        </div>
                        <div class="thumbnail-image">
                           <div class="thumbImg">
                              <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/super_delux_room/super_delux_room_5.jpg')}}" alt="img">
                           </div>
                        </div>
                        <div class="thumbnail-image">
                           <div class="thumbImg">
                              <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/super_delux_room/super_delux_room_4.jpg')}}" alt="img">
                           </div>
                        </div>
                        <div class="thumbnail-image">
                           <div class="thumbImg">
                              <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/super_delux_room/super_delux_room_3.jpg')}}" alt="img">
                           </div>
                        </div>
                        <div class="thumbnail-image">
                           <div class="thumbImg">
                              <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/super_delux_room/super_delux_room_2.jpg')}}" alt="img">
                           </div>
                        </div>
                        <div class="thumbnail-image">
                           <div class="thumbImg">
                              <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/super_delux_room/super_delux_room_1.jpg')}}" alt="img">
                           </div>
                        </div>
                        
                     </div>
                     <div class="services-content">
                        
                        <h4><a href="#">Super Deluxe Double Room</a></h4>
                        <p>Enjoy comfort and style in our Superior Deluxe Room—a spacious retreat with modern amenities near Varanasi's iconic ghats.</p>
                        <div class="icon">
                           <ul>
                              <li><img src="{{asset('fronted/img/icon/sve-icon1.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon2.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon3.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon4.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon5.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon6.png')}}" alt="img"></li>
                           </ul>
                        </div>
                        <div class="day-book">
                           <ul>
                              <li>Rs.6000/ + Tax</li>
                              <li><a href="#bookaroom">Book Now</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-6 col-md-6">
                  <div class="single-services mb-30 banner-slider">
                     <div class="services-thumb slider slider-for slider-for-big_3">
                        <div class="slider-banner-image">
                           <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/triple_bed_room/triple_bed_room_1.jpg')}}" alt="img">
                        </div>
                        
                     </div>
                     <div class="slider slider-nav thumb-image slider_room_thumb slider-nav-thumb_3">
                        <div class="thumbnail-image">
                           <div class="thumbImg">
                              <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/triple_bed_room/triple_bed_room_1.jpg')}}" alt="img">
                           </div>
                        </div>
                        
                     </div>
                     <div class="services-content">
                        
                        <h4><a href="#">Triple Bed Room</a></h4>
                        <p>Experience the charm of Varanasi from our Balcony Triple Room, offering stunning views and a relaxing retreat after a day of exploration.</p>
                        <div class="icon">
                           <ul>
                              <li><img src="{{asset('fronted/img/icon/sve-icon1.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon2.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon3.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon4.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon5.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon6.png')}}" alt="img"></li>
                           </ul>
                        </div>
                        <div class="day-book">
                           <ul>
                              <li>Rs.6500/ + Tax</li>
                              <li><a href="#bookaroom">Book Now</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-xl-6 col-md-6">
                  <div class="single-services mb-30 banner-slider">
                     <div class="services-thumb slider slider-for slider-for-big_4">
                        <div class="slider-banner-image">
                           <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/family_quad_room/family_quad_room_3.jpg')}}" alt="img">
                        </div>
                        <div class="slider-banner-image">
                           <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/family_quad_room/family_quad_room_2.jpg')}}" alt="img">
                        </div>
                        <div class="slider-banner-image">
                           <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/family_quad_room/family_quad_room_1.jpg')}}" alt="img">
                        </div>
                        
                     </div>
                     <div class="slider slider-nav thumb-image slider_room_thumb slider-nav-thumb_4">
                        <div class="thumbnail-image">
                           <div class="thumbImg">
                              <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/family_quad_room/family_quad_room_3.jpg')}}" alt="img">
                           </div>
                        </div>
                        <div class="thumbnail-image">
                           <div class="thumbImg">
                              <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/family_quad_room/family_quad_room_2.jpg')}}" alt="img">
                           </div>
                        </div>
                        <div class="thumbnail-image">
                           <div class="thumbImg">
                              <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/family_quad_room/family_quad_room_1.jpg')}}" alt="img">
                           </div>
                        </div>
                        
                     </div>
                     <div class="services-content">
                        
                        <h4><a href="#">Family Quad Room </a></h4>
                        <p>Experience the charm of Varanasi from our Balcony Triple Room, offering stunning views and a relaxing retreat after a day of exploration.</p>
                        <div class="icon">
                           <ul>
                              <li><img src="{{asset('fronted/img/icon/sve-icon1.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon2.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon3.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon4.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon5.png')}}" alt="img"></li>
                              <li><img src="{{asset('fronted/img/icon/sve-icon6.png')}}" alt="img"></li>
                           </ul>
                        </div>
                        <div class="day-book">
                           <ul>
                              <li>Rs.6500/ + Tax</li>
                              <li><a href="#bookaroom">Book Now</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div> -->
            </div>
         </div>
      </section>
      @endif
<!-- room-area-end -->    

<!-- booking-area -->
@include('frontend.layouts.book-a-room')
<!-- booking-area-end -->	
<!-- video-area -->
<!-- <section id="video" class="video-area pt-150 pb-150 p-relative" style="background-image:url(img/bg/video-bg.png); background-repeat: no-repeat; background-position: center bottom; background-size:cover;"> -->
<!-- Lines -->
<!-- <div class="content-lines-wrapper2">
   <div class="content-lines-inner2">
       <div class="content-lines2"></div>
   </div>
   </div> -->
<!-- Lines -->
<!-- <div class="container">                   
   <div class="row">
      <div class="col-12">
          <div class="s-video-wrap">
              <div class="s-video-content">
                  <a href="https://www.youtube.com/watch?v=gyGsPlt06bo" class="popup-video"><img src="img/bg/play-button.png" alt="circle_right"></a>
                 
              </div>
          </div>
          <div class="section-title center-align text-center">
              <h2>
               Take A Tour Of Luxuri
              </h2>
          </div>
      </div>
      
   </div>
   </div>
   </section> -->
<!-- video-area-end -->
@endsection