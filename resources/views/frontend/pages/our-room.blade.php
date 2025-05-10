@extends('frontend.layouts.master')
@section('title','Hotel Sankalp - Our Room')
@section('description', 'Hotel Sankalp')
@section('keywords', 'Qulity Room , Best Accommodation Hotel in varanasi, Wellness & Spa in varanasi, Varanasi Hotel, Luxury Hotel in Varanasi, Hotel sankalp facilities')
@section('main-content')
<section class="breadcrumb-area d-flex align-items-center" style="background-image:url('{{asset('fronted/hotelsankalp-img/new-12-24/bread/1.jpg') }}')">
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
<!-- <div class="MuiBox-root css-1qq3jvr">
   <div class="MuiBox-root css-1g7yrq7">
      <div class="MuiBox-root css-1l4w6pd">
         <div class="MuiBox-root css-1ksxo9d" id="step-1">
            <button class="MuiButtonBase-root MuiButton-root MuiButton-outlined MuiButton-outlinedPrimary MuiButton-sizeMedium MuiButton-outlinedSizeMedium MuiButton-colorPrimary css-14kd7oz" tabindex="0" type="button">1</button>
            &nbsp;<span class="MuiTypography-root MuiTypography-body-m css-1ngbk5i">Select Room 1</span>
         </div>
         <div class="MuiBox-root css-1g29yqe">
            <button class="MuiButtonBase-root MuiButton-root MuiButton-outlined MuiButton-outlinedPrimary MuiButton-sizeMedium MuiButton-outlinedSizeMedium MuiButton-colorPrimary booking-emptyCart css-72cy7q" tabindex="0" type="button" id="personal-details">2</button>
            &nbsp;<span class="MuiTypography-root MuiTypography-body-m css-1ovzwj7">Personal Details</span>
         </div>
         <div class="MuiBox-root css-1g29yqe">
            <button class="MuiButtonBase-root MuiButton-root MuiButton-outlined MuiButton-outlinedPrimary MuiButton-sizeMedium MuiButton-outlinedSizeMedium MuiButton-colorPrimary booking-emptyCart css-72cy7q" tabindex="0" type="button" id="payment-confirmation">3</button>
            &nbsp;<span class="MuiTypography-root MuiTypography-body-m css-1ovzwj7">Payment Confirmation</span>
         </div>
      </div>
   </div>
</div> -->
<!-- room-area-->
@if (isset($data['hotel_room']) && $data['hotel_room']->count() > 0)
<section id="services" class="our-room services-area pt-50 pb-90">
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
                  <a class="lightbox" data-fancybox="images-{{$hotel_room_row->id}}" data-caption="{{ $hotel_room_row->title }}" href="{{ asset('hotel-sankalp-image-file/room-image/large/'. $image->image_path ) }}" title="{{ $hotel_room_row->title }}">
                     <div class="slider-banner-image">
                        <img src="{{ asset('hotel-sankalp-image-file/room-image/large/'. $image->image_path ) }}" alt="{{ $hotel_room_row->title }}" loading="lazy">
                     </div>
                  </a>
                  @endforeach

               </div>
               <div class="slider slider-nav thumb-image slider_room_thumb slider-nav-thumb_{{ $sr_no }}">
                  @foreach ($hotel_room_row->images as $image)
                  <div class="thumbnail-image">
                     <div class="thumbImg">
                        <img src="{{ asset('hotel-sankalp-image-file/room-image/thumb/'. $image->image_path ) }}" alt="{{ $hotel_room_row->title }}" loading="lazy">
                     </div>
                  </div>
                  @endforeach

               </div>
               <div class="services-content">

                  <h4><a href="{{ route('our-room.details', ['slug' => $hotel_room_row->slug]) }}">{{ $hotel_room_row->title }}</a></h4>
                  <p>
                      {{ \Illuminate\Support\Str::words(strip_tags($hotel_room_row->details), 200, '...') }} 
                     </p>
                  <div class="icon">
                     <ul>
                        <li><img src="{{asset('fronted/img/icon/sve-icon1.png')}}" alt="{{ $hotel_room_row->title }}" loading="lazy"></li>
                        <li><img src="{{asset('fronted/img/icon/sve-icon2.png')}}" alt="{{ $hotel_room_row->title }}" loading="lazy"></li>
                        <li><img src="{{asset('fronted/img/icon/sve-icon3.png')}}" alt="{{ $hotel_room_row->title }}" loading="lazy"></li>
                        <li><img src="{{asset('fronted/img/icon/sve-icon4.png')}}" alt="{{ $hotel_room_row->title }}" loading="lazy"></li>
                        <li><img src="{{asset('fronted/img/icon/sve-icon5.png')}}" alt="{{ $hotel_room_row->title }}" loading="lazy"></li>
                        <li><img src="{{asset('fronted/img/icon/sve-icon6.png')}}" alt="{{ $hotel_room_row->title }}" loading="lazy"></li>
                     </ul>
                  </div>

                  <div class="day-book">
                     <ul>
                        <li>Rs.{{ $hotel_room_row->room_price }}/ + Tax</li>
                        <li><a href="{{ route('our-room.details', ['slug' => $hotel_room_row->slug]) }}">Book Now</a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
         @php
         $sr_no++;
         @endphp
         @endforeach

      </div>
   </div>
</section>
@endif
<!-- room-area-end -->

<!-- booking-area -->
<!-- @include('frontend.layouts.book-a-room') -->
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