@php
use App\Models\BlogImages;
@endphp
@extends('frontend.layouts.master')
@section('title','Sankalp - Luxury Hotel in Varanasi')
@section('description', 'Sankalp - Our hotel stands out as a top-rated haven in Varanasi, where your safety and comfort are our top priorities.')
@section('keywords', 'Hotel, Hotel varanasi, Sankalp, Varanasi Hotel, Luxury Hotel in Varanasi, The Hotel Facilities ,')

@section('main-content')
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000" data-bs-wrap="true">
   <div class="carousel-indicators">
      @foreach ($data['banner'] as $index => $banner_row)
      <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="{{ $index }}" class="{{ $loop->first ? 'active' : '' }}" aria-label="Slide {{ $index + 1 }}"></button>
      @endforeach
   </div>
   <div class="carousel-inner">
      @if (isset($data['banner']) && $data['banner']->count() > 0)
      @foreach($data['banner'] as $banner_row)
      <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
         <img src="{{ asset('hotel-sankalp-image-file/banner-image/' . $banner_row->banner_image_desktop) }}" class="d-block w-100" alt="img" loading="lazy">
         <div class="centered">
            @if($banner_row->banner_title !== null && $banner_row->banner_title !== '')
            <div class="carousel-overlay">
               <div class="slider-content s-slider-content text-center mt-3">
                  <h3 data-animation="fadeInUp" data-delay=".4s">
                     {{ $banner_row->banner_title }}
                  </h3>
                  @if($banner_row->banner_content !== null && $banner_row->banner_content !== '')
                  <p data-animation="fadeInUp" data-delay=".6s">{{ $banner_row->banner_content }}</p>
                  @endif

               </div>
            </div>
            @endif
         </div>
      </div>
      @endforeach
      @endif
   </div>
   <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
   </button>
   <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
   </button>
</div>

<div id="booking" class="booking-area p-relative">
   <div class="container">
      <form action="{{route('home-quick-enquiry.store')}}" class="contact-form form-home" method="post">
         @csrf
         <input type="hidden" name="extra_field" class="hidden-honeypot">
         <div class="row align-items-center">
            <div class="col-lg-12">
               <!-- <h6 class="text-center text-danger">Booking Start 1 November 2024.</h6> -->
               <ul>
                  <li>
                     <div class="contact-field p-relative c-name">
                        <label><i class="fal fa-badge-check"></i> Check In Date</label>
                        <input type="date" id="chackin" name="check_in_date">
                        @if($errors->has('check_in_date'))
                        <div class="text-danger">{{ $errors->first('check_in_date') }}</div>
                        @endif
                     </div>
                  </li>
                  <li>
                     <div class="contact-field p-relative c-name">
                        <label><i class="fal fa-times-octagon"></i> Check Out Date</label>
                        <input type="date" id="chackout" name="check_out_date">
                        @if($errors->has('check_out_date'))
                        <div class="text-danger">{{ $errors->first('check_out_date') }}</div>
                        @endif
                     </div>
                  </li>
                  <li>
                     <div class="contact-field p-relative c-name">
                        <label><i class="fal fa-concierge-bell"></i>No. of Rooms</label>
                        <select name="no_of_rooms" id="rm" class="home-room">
                           <option value="sports-massage">Room</option>
                           <option value="1">1</option>
                           <option value="2">2</option>
                           <option value="3">3</option>
                           <option value="4">4</option>
                           <option value="5">5</option>
                           <option value="6">6</option>
                           <option value="7">7</option>
                           <option value="8">8</option>
                           <option value="9">9</option>
                           <option value="10+">10+</option>
                        </select>
                        @if($errors->has('no_of_rooms'))
                        <div class="text-danger">{{ $errors->first('no_of_rooms') }}</div>
                        @endif
                     </div>
                  </li>
                  <li>
                     <div class="contact-field p-relative c-name">
                        <label><i class="fal fa-users"></i> Contact Person</label>
                        <input type="text" id="firstn" name="contact_person_name" placeholder="Contact person name">
                        @if($errors->has('contact_person_name'))
                        <div class="text-danger">{{ $errors->first('contact_person_name') }}</div>
                        @endif
                     </div>
                  </li>
                  <li>
                     <div class="contact-field p-relative c-name">
                        <label><i class="fal fa-mail-bulk"></i> Email Id</label>
                        <input
                           type="email"
                           id="email"
                           name="email"
                           placeholder="Email id">
                        @if($errors->has('email'))
                        <div class="text-danger">{{ $errors->first('email') }}</div>
                        @endif
                     </div>
                  </li>
                  <li>
                     <div class="contact-field p-relative c-name">
                        <label><i class="fal fa-mobile"></i> Phone No.</label>
                        <input
                           type="text"
                           id="firstn"
                           name="phone_no"
                           placeholder="Phone/Mobile No."
                           pattern="^[0-9]{10}$"
                           maxlength="10"
                           inputmode="numeric"
                           title="Please enter a 10-digit phone number"
                           oninput="this.value = this.value.replace(/[^0-9]/g, '').slice(0, 10)">
                        @if($errors->has('phone_no'))
                        <div class="text-danger">{{ $errors->first('phone_no') }}</div>
                        @endif
                     </div>
                  </li>

                  <li>
                     <div class="slider-btn">
                        <label><i class="fal fa-calendar-alt"></i></label>
                        <button class="btn ss-btn" data-animation="fadeInRight" data-delay=".8s">Submit</button>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
      </form>
   </div>
</div>
<!-- booking-area-end -->
<!-- about-area -->
<section class="about-area about-p pt-40 pb-40 p-relative fix">

   <div class="animations-02">
      <img src="{{asset('fronted/img/bg/an-img-02.png')}}" alt="contact-bg-an-02" loading="lazy">
   </div>
   <div class="container">
      <div class="row justify-content-center align-items-center">
         <div class="col-lg-6 col-md-12 col-sm-12">
            <div class="s-about-img p-relative  wow fadeInLeft animated" data-animation="fadeInLeft" data-delay=".4s">
               <img src="{{asset('fronted/hotelsankalp-img/new-12-24/about-top.png')}}" alt="img" loading="lazy">
               <div class="about-icon">
                  <img src="{{asset('fronted/hotelsankalp-img/new-12-24/about-bottom.jpg')}}" alt="img" loading="lazy">
               </div>
            </div>
         </div>
         <div class="col-lg-6 col-md-12 col-sm-12">
            <div class="about-content s-about-content  wow fadeInRight  animated pl-30" data-animation="fadeInRight" data-delay=".4s">
               <div class="about-title second-title pb-25">
                  <h5>About Us</h5>
                  <h2> Ensuring Safety and Comfort for Your Stay.</h2>
               </div>
               <p>Our hotel stands out as a top-rated haven in Varanasi, where your safety and comfort are our top priorities. Nestled in the heart of this ancient city, we offer a sanctuary amidst the hustle and bustle, ensuring a peaceful and secure stay for all our guests. Our commitment to excellence is reflected in our high ratings, which highlight our dedication to providing exceptional service and maintaining the highest standards of safety and hygiene.</p>
               <p>Experience true tranquility and relaxation in Varanasi, known for its vibrant spirituality and rich cultural heritage. Our hotel offers a serene retreat where you can unwind and rejuvenate, away from the chaos of everyday life. Whether you're exploring the city's temples and ghats or simply seeking a peaceful getaway, our top-rated establishment provides the perfect blend of comfort, convenience, and safety for a memorable stay in Varanasi.</p>
               <div class="about-content3 mt-30">
                  <div class="row justify-content-center align-items-center">

                     <div class="col-md-12">
                        <div class="slider-btn ml--3">
                           <a href="{{url('about-us') }}" class="btn ss-btn smoth-scroll">Read More</a>
                        </div>
                     </div>

                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<!-- about-area-end -->

<!-- New SEO Content Section with Tailwind CSS -->
<section class="tw-relative tw-py-10 md:tw-py-15 tw-px-4 sm:tw-px-6 lg:tw-px-8 tw-overflow-hidden tw-bg-[#faf8f5]">
   <div class="tw-absolute tw-inset-0 tw-opacity-[0.04] tw-pointer-events-none" style="background-image: radial-gradient(circle, #78350f 1px, transparent 1px); background-size: 28px 28px;"></div>
   <div class="tw-absolute tw-top-0 tw-left-0 tw-w-[600px] tw-h-[600px] tw-rounded-full tw-blur-3xl -tw-translate-x-1/3 -tw-translate-y-1/3 tw-pointer-events-none" style="background: radial-gradient(circle, rgba(251,191,36,0.4) 0%, transparent 70%);"></div>
   <div class="tw-absolute tw-bottom-0 tw-right-0 tw-w-[700px] tw-h-[700px] tw-rounded-full tw-blur-3xl tw-translate-x-1/3 tw-translate-y-1/3 tw-pointer-events-none" style="background: radial-gradient(circle, rgba(251,146,60,0.3) 0%, transparent 70%);"></div>
   <div class="tw-absolute tw-top-0 tw-left-0 tw-right-0 tw-h-px tw-bg-gradient-to-r tw-from-transparent tw-via-amber-500/60 tw-to-transparent tw-pointer-events-none"></div>
   <div class="tw-relative tw-max-w-7xl tw-mx-auto">
      <div class="tw-text-center tw-mb-12 md:tw-mb-15">        

         <h3 class="tw-text-2xl md:tw-text-4xl tw-text-gray-900 tw-leading-snug">
            Best Hotel in Varanasi for a
            <span class="tw-block tw-mt-1 tw-text-[#644222]">
               Comfortable Stay
            </span>
         </h3>
         <div class="tw-w-16 tw-h-0.5 tw-bg-[#dac193] tw-mx-auto tw-mt-4 tw-rounded-full"></div>
      </div>
      <div class="tw-grid lg:tw-grid-cols-12 tw-gap-8 tw-lg:mb-15 tw-mb-10">
         <div class="lg:tw-col-span-7 tw-relative tw-bg-white tw-rounded-2xl tw-p-5 md:tw-p-6 tw-shadow-[0_20px_60px_-15px_rgba(120,53,15,0.15)] tw-border tw-border-amber-100/80 tw-overflow-hidden tw-group hover:tw-shadow-[0_30px_80px_-15px_rgba(120,53,15,0.25)] hover:-tw-translate-y-1 tw-transition-all tw-duration-500">
            <div class="tw-absolute tw-top-0 tw-left-0 tw-w-24 tw-h-24 tw-border-t-2 tw-border-l-2 tw-border-[#644222] tw-rounded-tl-2xl"></div>
            <div class="tw-absolute tw-bottom-0 tw-right-0 tw-w-24 tw-h-24 tw-border-b-2 tw-border-r-2 tw-border-[#644222] tw-rounded-br-2xl"></div>
            <div class="tw-relative">
               <div class="tw-flex tw-items-baseline tw-gap-3 tw-mb-6">
                  <span class="tw-text-5xl tw-font-serif tw-font-bold tw-text-[#644222] tw-leading-none">01</span>
                  <span class="tw-h-px tw-flex-1 tw-bg-gradient-to-r tw-from-[#644222] tw-to-transparent"></span>
               </div>
               <p class="tw-text-[16px] tw-text-[#181616]">
                  Welcome to Hotel Sankalp, a comfortable and welcoming destination for travelers looking to experience Varanasi with convenience and peace of mind. The hotel offer a relaxing base for exploring the spiritual, cultural, and historical attractions of the city while located in Mahmoorganj.
               </p>
            </div>
         </div>
         
         <div class="lg:tw-col-span-5 tw-relative tw-bg-gradient-to-br tw-from-[#1a1410] tw-via-[#221a13] tw-to-[#1a1410] tw-rounded-2xl tw-p-5 md:tw-p-6 tw-shadow-[0_20px_60px_-15px_rgba(0,0,0,0.4)] tw-overflow-hidden tw-group hover:-tw-translate-y-1 tw-transition-all tw-duration-500">
            <div class="tw-absolute tw-top-0 tw-left-0 tw-right-0 tw-h-px tw-bg-gradient-to-r tw-from-transparent tw-via-[#644222] tw-to-transparent"></div>
            <div class="tw-absolute tw-inset-0 tw-opacity-[0.06]" style="background-image: radial-gradient(circle, #fbbf24 1px, transparent 1px); background-size: 22px 22px;"></div>
            <div class="tw-absolute -tw-bottom-24 -tw-right-24 tw-w-64 tw-h-64 tw-bg-[#644222] tw-rounded-full tw-opacity-20 tw-blur-3xl"></div>

            <div class="tw-relative">
               <div class="tw-flex tw-items-baseline tw-gap-3 tw-mb-6">
                  <span class="tw-text-5xl tw-font-serif tw-font-bold tw-text-white tw-leading-none">02</span>
                  <span class="tw-h-px tw-flex-1 tw-bg-gradient-to-r tw-from-white tw-to-transparent"></span>
               </div>

               <p class="tw-text-[16px] tw-text-[#ffff]">
                  Hotel Sankalp offers a combination of comfortable accommodation, attentive service, convenient facilities, and a well connected location, if you are looking for the Best Hotel in Varanasi. The hotel features Family Rooms, Executive Triple Rooms, Executive Rooms, and Deluxe Rooms, giving guests options suited to different travel requirements.
               </p>
            </div>
         </div>
      </div>

      <div class="tw-relative tw-lg:mb-20 tw-mb-5">
         <div class="tw-grid lg:tw-grid-cols-12 tw-lg:tw-gap-10 tw-lg:tw-gap-5 tw-items-start">
            <div class="lg:tw-col-span-3 tw-flex lg:tw-block tw-justify-center">
               <div class="tw-hidden lg:tw-inline-block tw-relative">
                  <div class="tw-text-[140px] md:tw-text-[180px] tw-leading-[0.85] tw-font-serif tw-font-bold tw-text-transparent tw-select-none" style="-webkit-text-stroke: 2px #644222; tw-text-stroke: 2px #644222;">
                     01
                  </div>
                  <div class="tw-absolute -tw-bottom-2 tw-left-1/2 -tw-translate-x-1/2 tw-whitespace-nowrap tw-text-[10px] tw-font-bold tw-text-[#644222] tw-uppercase tw-tracking-[0.35em] tw-bg-[#faf8f5] tw-px-3">
                     Family Stay
                  </div>
               </div>
            </div>
            <div class="lg:tw-col-span-9 tw-relative">
               <div class="tw-absolute -tw-left-6 tw-top-2 tw-bottom-2 tw-w-px tw-bg-gradient-to-b tw-from-amber-400 tw-via-amber-300 tw-to-transparent tw-hidden lg:tw-block"></div>
               <h4 class="tw-text-2xl md:tw-text-3xl lg:tw-text-3xl tw-text-gray-900 tw-leading-tight tw-mb-3">
                  A Comfortable
                  <span class="tw-relative tw-inline-block">
                     <span class="tw-text-[#644222]">Family Stay</span>
                     <span class="tw-absolute tw-bottom-1 tw-left-0 tw-right-0 tw-h-px tw-bg-[#644222]/40"></span>
                  </span>
                  in Varanasi
               </h4>

               <p class="tw-text-[16px] tw-text-[#181616]">
                  Planning a holiday with your loved ones becomes easier when everyone has a comfortable place to relax. Offering spacious accommodation options and a peaceful environment after a day of sightseeing, Hotel Sankalp is a welcoming Family Hotel in Varanasi. Families can explore the famous temples, ghats, and cultural attractions of the city before returning to the comfort of the hotel. This property also provides parking and 24 hour power backup that add convenience to your stay.
               </p>
            </div>
         </div>
      </div>

      <div class="tw-relative">
         <div class="tw-grid lg:tw-grid-cols-12 tw-gap-10 tw-items-start">
            <div class="lg:tw-col-span-9 lg:tw-order-1 tw-relative">
               <div class="tw-absolute -tw-right-6 tw-top-2 tw-bottom-2 tw-w-px tw-bg-gradient-to-b tw-from-amber-400 tw-via-amber-300 tw-to-transparent tw-hidden lg:tw-block"></div>

               <h4 class="tw-text-2xl md:tw-text-3xl lg:tw-text-3xl tw-text-gray-900 tw-leading-tight tw-mb-3">
                  Quality Accommodation at a
                  <span class="tw-relative tw-inline-block">
                     <span class="tw-text-[#644222]">Convenient Price</span>
                     <span class="tw-absolute tw-bottom-1 tw-left-0 tw-right-0 tw-h-px tw-bg-[#644222]"></span>
                  </span>
               </h4>

               <div class="tw-text-[16px] tw-text-[#181616]">
                  <p>
                     Hotel Sankalp can also be considered a Budget Hotel in Varanasi for travelers who want comfort without unnecessary extravagance. While enjoying essential hotel facilities and attentive service where guests can choose from various room categories according to their requirements.
                  </p>
                  <p>
                     The hotel is also home to Satvik Restaurant, offering Indian, Continental, Asian, and vegan/healthy options. Hotel Sankalp offers a convenience place to stay whether you are visiting Varanasi for pilgrimage, family travel, business, or sightseeing. Discover the city, return to a comfortable room, and enjoy a stay designed around your needs.
                  </p>
               </div>
            </div>

            <!-- Number visual -->
            <div class="lg:tw-col-span-3 lg:tw-order-2 tw-flex lg:tw-block tw-justify-center">
               <div class="tw-hidden lg:tw-inline-block tw-relative">
                  <div class="tw-text-[140px] md:tw-text-[180px] tw-leading-[0.85] tw-font-serif tw-font-bold tw-text-transparent tw-select-none" style="-webkit-text-stroke: 2px #644222; tw-text-stroke: 2px #644222;">
                     02
                  </div>
                  <div class="tw-absolute -tw-bottom-2 tw-left-1/2 -tw-translate-x-1/2 tw-whitespace-nowrap tw-text-[10px] tw-font-bold tw-text-[#644222] tw-uppercase tw-tracking-[0.35em] tw-bg-[#faf8f5] tw-px-3">
                     Best Value
                  </div>
               </div>
            </div>
         </div>
      </div>

   </div>

   <div class="tw-absolute tw-bottom-0 tw-left-0 tw-right-0 tw-h-px tw-bg-gradient-to-r tw-from-transparent tw-via-amber-500/60 tw-to-transparent"></div>
</section>
<!-- End New SEO Content Section -->
<!-- service-details2-area -->
@if (isset($data['hotel_facilities']) && $data['hotel_facilities']->count() > 0)
<section id="service-details2" class="pt-40 pb-40 p-relative" style="background-color: #dac193;">
   <div class="animations-01">
      <img src="{{asset('fronted/img/bg/an-img-01.png')}}" alt="an-img-01" loading="lazy">
   </div>
   <div class="container">
      <div class="row align-items-center">
         <div class="col-lg-12">
            <div class="section-title center-align mb-20 text-center">
               <h5>Explore</h5>
               <h2>
                  The Hotel Facilities
               </h2>
            </div>
         </div>
         @foreach($data['hotel_facilities'] as $hotel_facilities_row)
         <div class="col-lg-4 col-md-6">
            <div class="services-08-item mb-30">
               <div class="services-icon2">
                  <img src="{{ asset('hotel-sankalp-image-file/facilities-icon/'. $hotel_facilities_row->facilities_icon) }}" alt="img" loading="lazy">
               </div>
               <div class="services-08-thumb">
                  <img src="{{ asset('hotel-sankalp-image-file/facilities-icon/'. $hotel_facilities_row->facilities_icon) }}" alt="img" loading="lazy">
               </div>
               <div class="services-08-content">
                  <h3><a href="#"> {{ $hotel_facilities_row->title }}</a></h3>
                  <p>

                     {!! strip_tags(substr($hotel_facilities_row->facilities_content, 0, 200)) !!}
                  </p>
                  <a href="#">Read More <i class="fal fa-long-arrow-right"></i></a>
               </div>
            </div>
         </div>
         @endforeach
         <div class="col-md-12">
            <div class="ml--3 text-center">
               <a href="{{url('facilities') }}" class="btn ss-btn smoth-scroll">Read More</a>
            </div>
         </div>
      </div>
   </div>
</section>
@endif
<!-- service-details2-area-end -->
<!-- room-area-->
@if (isset($data['hotel_room']) && $data['hotel_room']->count() > 0)
<section id="services" class="services-area pt-40 pb-70 room-home">
   <div class="container">
      <div class="row justify-content-center">
         <div class="col-xl-12">
            <div class="section-title center-align mb-50 text-center">
               <h5>The pleasure of luxury</h5>
               <h2>Rooms & Suites</h2>
               <!-- <p>Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel</p> -->
            </div>
         </div>
      </div>
      <div class="row services-active">
         @foreach($data['hotel_room'] as $hotel_room_row)

         <div class="col-xl-4 col-md-6">
            <div class="single-services mb-30">
               <div class="services-thumb">
                  <a class="gallery-link popup-image" href="{{ asset('hotel-sankalp-image-file/room-image/large/'. $hotel_room_row->random_image->image_path) }}">
                     <img src="{{ asset('hotel-sankalp-image-file/room-image/large/'. $hotel_room_row->random_image->image_path) }}" alt="img" loading="lazy">
                  </a>
               </div>
               <div class="services-content">
                  <div class="day-book">
                     <ul>
                        <li>Rs.{{ $hotel_room_row->room_price }}/ + Tax</li>
                        <li><a href="{{url('our-room#bookaroom') }}">Book Now</a></li>
                     </ul>
                  </div>
                  <h4><a href="#">{{ $hotel_room_row->title }}</a></h4>
                  <p>
                     {!! strip_tags(substr($hotel_room_row->details, 0, 150)) !!}
                  </p>
                  <div class="icon">
                     <ul>
                        <li><img src="{{asset('fronted/img/icon/sve-icon1.png')}}" loading="lazy" alt="img"></li>
                        <li><img src="{{asset('fronted/img/icon/sve-icon2.png')}}" loading="lazy" alt="img"></li>
                        <li><img src="{{asset('fronted/img/icon/sve-icon3.png')}}" loading="lazy" alt="img"></li>
                        <li><img src="{{asset('fronted/img/icon/sve-icon4.png')}}" loading="lazy" alt="img"></li>
                        <li><img src="{{asset('fronted/img/icon/sve-icon5.png')}}" loading="lazy" alt="img"></li>
                        <!-- <li><img src="{{asset('fronted/img/icon/sve-icon6.png')}}" loading="lazy" alt="img"></li> -->
                     </ul>
                  </div>
               </div>
            </div>
         </div>
         @endforeach
      </div>
   </div>
</section>
@endif
<!-- room-area-end -->
<!-- feature-area -->
<section class="feature-area2 p-relative fix mb-2 ganges-section" style="background: #dac193;">
   <div class="animations-02">
      <img src="{{asset('fronted/img/bg/an-img-02.png')}}" alt="contact-bg-an-05" loading="lazy">
   </div>
   <div class="container">
      <div class="row justify-content-center align-items-center">
         <div class="col-lg-6 col-md-12 col-sm-12 pr-30">
            <div class="feature-img">
               <img src="{{asset('fronted/hotelsankalp-img/02-09-2024/reception_2.jpg')}}" alt="img" class="img" loading="lazy">
            </div>
         </div>
         <div class="col-lg-6 col-md-12 col-sm-12">
            <div class="feature-content s-about-content">
               <div class="feature-title pb-20 mt-4">
                  <h5>Luxury Hotel in Varanasi</h5>
                  <h2>
                     Jewel of the Ganges.
                  </h2>
               </div>
               <p>Our hotel in Varanasi stands out for its prime location near the ghats, offering guests stunning views and easy access to the spiritual heart of the city. We pride ourselves on providing exceptional service, ensuring that every aspect of your stay is taken care of by our dedicated staff, from seamless check-in to attentive assistance throughout your visit.</p>
               <p>Experience comfort and luxury in our rooms and suites, designed for utmost relaxation. Indulge in culinary delights at our restaurant, featuring local and international cuisine. Rejuvenate at our spa with a range of treatments for body and mind. Host events in our modern, well-equipped spaces, prioritizing safety and offering special packages for a memorable stay.</p>
               <!-- <div class="slider-btn mt-15">                                          
                     <a href="/" class="btn ss-btn smoth-scroll">Discover More</a>				
                     </div> -->
            </div>
         </div>
      </div>
   </div>
</section>

@if($data['nearby_attractions']->isNotEmpty())
<section id="blog" class="blog-area p-relative fix pt-30 pb-30 near-by-attraction-section">
   <div class="container">
      <div class="row align-items-center">
         <div class="col-lg-12">
            <div class="section-title center-align mb-30 text-center wow fadeInDown  animated" data-animation="fadeInDown" data-delay=".4s">
               <!-- <h5>NEARBY ATTRACTIONS</h5> -->
               <h2>
                  Near by Attractions
               </h2>
               <!-- <p>Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel</p> -->
            </div>

         </div>
      </div>
      <div class="row">
         @foreach($data['nearby_attractions'] as $attraction)
         <div class="col-lg-3 col-md-6">
            <div class="single-post2 hover-zoomin mb-20 wow fadeInUp animated" data-animation="fadeInUp" data-delay=".4s">
               @if($attraction->image_file)
               <div class="blog-thumb2">
                  <a href="{{ route('near-by-attraction.details', $attraction->slug) }}">
                     <img src="{{ asset('hotel-sankalp-image-file/near-by-img/' . $attraction->image_file) }}" alt="{{ $attraction->title }}">
                  </a>
               </div>
               @endif
               <div class="blog-content2 near-main-content">
                  <h4>
                     <a href="{{ route('near-by-attraction.details', $attraction->slug) }}">
                        {{ $attraction->title }}
                     </a>
                  </h4>
                  <!-- @if($attraction->description)
                     <p>
                        {!! Str::limit($attraction->description, 70) !!}
                     </p>
                  @endif -->
                  <!-- <div class="blog-btn">
                     <a href="#">Read More</a>
                  </div> -->
               </div>
            </div>
         </div>
         @endforeach
         <div class="col-md-12">
            <div class="ml--3 text-center">
               <a href="{{ route('near-by-attraction') }}" class="btn ss-btn smoth-scroll">View All</a>
            </div>
         </div>
      </div>
   </div>
</section>
@endif
@endsection