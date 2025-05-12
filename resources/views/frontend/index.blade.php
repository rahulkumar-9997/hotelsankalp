@php
use App\Models\BlogImages;
@endphp
@extends('frontend.layouts.master')
@section('title','Sankalp - Luxury Hotel in Varanasi')
@section('description', 'Sankalp - Our hotel stands out as a top-rated haven in Varanasi, where your safety and comfort are our top priorities.')
@section('keywords', 'Hotel, Hotel varanasi, Sankalp, Varanasi Hotel, Luxury Hotel in Varanasi, The Hotel Facilities ,')

@section('main-content')
<!-- main-area -->

<!-- slider-area -->
<!-- <section id="home" class="slider-area fix p-relative" >
      <div class="slider-active" >
          <div class="single-slider slider-bg d-flex align-items-center" style="background-image: url(img/slider/ghat4.avif); background-size: cover;height: 100vh;">
                  <div class="container" 
                  style="position: relative;
                  z-index: 2;"
                  >
                      <div class="row justify-content-center">  
                          <div class="col-lg-8 col-md-8 mt-5">
                              <div class="slider-content s-slider-content text-center mt-3">
                                  <h3 data-animation="fadeInUp" data-delay=".4s">Enjoy A Luxuary Experience</h3>
                                  <p data-animation="fadeInUp" data-delay=".6s">Discover peace amidst the bustle of Varanasi at our hotel. Experience tranquility and relaxation in this vibrant, spiritual city.</p>
                                  
                                  <div class="slider-btn mt-30 mb-105">     
                                      <a href="/" class="btn ss-btn active mr-15" data-animation="fadeInLeft" data-delay=".4s">Discover More </a>
                                      <a href="https://www.youtube.com/watch?v=gyGsPlt06bo" class="video-i popup-video" data-animation="fadeInUp" data-delay=".8s" style="animation-delay: 0.8s;" tabindex="0"><i class="fas fa-play"></i> Intro Video</a>
                                  </div>            
                              </div>
                          </div>
                      </div>
                  </div>
              
          </div>
          <div class="single-slider slider-bg d-flex align-items-center menu-area" style="background-image: url(img/slider/9224B.1.jpg); background-size: cover;">
             
                  <div class="container" style="position: relative;
                  z-index: 2;">
                      <div class="row justify-content-center">
                          <div class="col-lg-8 col-md-8 mt-5">
                              <div class="slider-content s-slider-content text-center mt-3">
                                  <h3 data-animation="fadeInUp" data-delay=".4s">Tranquil Retreat in Varanasi</h3>
                                  <p data-animation="fadeInUp" data-delay=".6s">Indulge in a serene escape at our hotel, where tranquility meets the vibrant spirit of Varanasi.</p>
                                  
                                  <div class="slider-btn mt-30 mb-105">     
                                      <a href="/" class="btn ss-btn active mr-15" data-animation="fadeInLeft" data-delay=".4s">Discover More </a>
                                      <a href="https://www.youtube.com/watch?v=gyGsPlt06bo" class="video-i popup-video" data-animation="fadeInUp" data-delay=".8s" style="animation-delay: 0.8s;" tabindex="0"><i class="fas fa-play"></i> Intro Video</a>
                                  </div>        
                              </div>
                          </div>
                      </div>
                  </div>
          </div>
      </div> 
      </section> -->
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

<!-- <section id="home" class="slider-area fix p-relative home">
      <div class="slider-active">
      @if (isset($data['banner']) && $data['banner']->count() > 0)
         @foreach($data['banner'] as $banner_row)
            <div class="home-banner-items">
               <div class="banner-inner-wrap" style="background-image: url('{{ asset('hotel-sankalp-image-file/banner-image/' . $banner_row->banner_image_desktop) }}')"></div>
               <div class="slider-overlay"></div>
               <div class="banner-content-wrap">
                  <div class="container">
                     <div class="row justify-content-center marg">
                        <div class="col-lg-8 col-md-8 ">
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
                  </div>
               </div>
            </div>
         @endforeach
      @endif
      </div>
   </section>-->
<!-- slider-area-end -->
<!-- booking-area -->
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
               <img src="{{asset('fronted/hotelsankalp-img/new-12-24/about-top.jpg')}}" alt="img" loading="lazy">
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
                        <li><img src="{{asset('fronted/img/icon/sve-icon6.png')}}" loading="lazy" alt="img"></li>
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
                           <a href="#">
                              <img src="{{ asset('hotel-sankalp-image-file/near-by-img/' . $attraction->image_file) }}" alt="{{ $attraction->title }}">
                           </a>
                     </div>
                     @endif
                     <div class="blog-content2 near-main-content">
                           <h4>
                              <a href="#">
                                 {{ $attraction->title }}
                              </a>
                           </h4>
                           <!-- <p>
                              {!! Str::limit($attraction->description, 70) !!}
                           </p> -->
                           <!-- <div class="blog-btn">
                              <a href="#">Read More</a>
                           </div> -->
                     </div>
                  </div>
               </div>
               @endforeach
         </div>
      </div>
   </section>
@endif
@endsection