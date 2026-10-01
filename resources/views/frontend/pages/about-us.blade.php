@extends('frontend.layouts.master')
@section('title','Hotel Sankalp - About us')
@section('description', 'Hotel Sankalp, Experience true tranquility and relaxation in Varanasi, known for its vibrant spirituality and rich cultural heritage.')
@section('keywords', 'Hotel, Hotel varanasi, Sankalp, Varanasi Hotel, Luxury Hotel in Varanasi, Hotel sankalp about us')

@section('main-content')
<section class="breadcrumb-area d-flex align-items-center" style="background-image:url('{{asset('fronted/hotelsankalp-img/new-12-24/bread/4.jpg') }}')">
   <div class="container">
      <div class="row align-items-center">
         <div class="col-xl-12 col-lg-12">
            <div class="breadcrumb-wrap text-center">
               <div class="breadcrumb-title">
                  <h2>About</h2>
                  <div class="breadcrumb-wrap">

                     <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                           <li class="breadcrumb-item">
                              <a href="{{URL::to('/')}}">Home</a>
                           </li>
                           <li class="breadcrumb-item active" aria-current="page">About</li>
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
<section class="about-area about-p tw-pt-16 tw-pb-16 tw-md:pt-20 tw-md:pb-20 tw-lg:pt-28 tw-lg:pb-28  p-relative fix">
   <div class="animations-02">
      <img src="{{asset('fronted/img/bg/an-img-02.png')}}" alt="contact-bg-an-02">
   </div>
   <div class="container">
      <div class="row justify-content-center align-items-center">
         <div class="col-lg-6 col-md-12 col-sm-12">
            <div class="s-about-img p-relative  wow fadeInLeft animated" data-animation="fadeInLeft" data-delay=".4s">
               <img src="{{asset('fronted/hotelsankalp-img/new-12-24/about-2-top.jpg')}}" alt="img">
               <div class="about-icon">
                  <img src="{{asset('fronted/hotelsankalp-img/new-12-24/about-2-bottom.jpg')}}" alt="img">
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
            </div>
         </div>
         <div class="col-lg-12">
            <div class="tw-max-w-7xl tw-mx-auto tw-text-center tw-mb-14 tw-mt-10">               
               <h3 class="tw-text-3xl md:tw-text-4xl tw-font-bold tw-text-gray-900 tw-leading-tight tw-mb-6">
                  Hotel near Mahamoorganj Railway Station
               </h3>
               <p class="tw-leading-relaxed tw-mb-4">
                  When you visit Varanasi, choosing the right accommodation can make a significant difference in your entire vacation. Offering travelers a convenient base for exploring the city while enjoying a peaceful environment away from the busiest areas, Hotel Sankalp offers a comfortable stay in Mahmoorganj.
               </p>
               <p class="tw-leading-relaxed">
                  For guests looking for a Hotel near Mahamoorganj Railway Station, the location of the property makes it a practical choice for travelers who want convenient access to transportation and important areas of Varanasi. The hotel is situated at B-38/8-3, Raghunath Nagar Colony, Mahmoorganj, Varanasi.
               </p>
            </div>
            <div class="tw-max-w-7xl tw-mx-auto tw-bg-[#faf6ee] tw-rounded-2xl tw-p-8 md:tw-p-10 tw-border tw-border-[#eadfc4]">
               <div class="tw-flex tw-items-start tw-gap-5">
                  <div class="tw-shrink-0 tw-w-14 tw-h-14 tw-rounded-full tw-bg-[#dac193] tw-flex tw-items-center tw-justify-center">
                     <i class="fal fa-map-marker-alt tw-text-xl tw-text-white"></i>
                  </div>
                  <div>
                     <h4 class="tw-text-2xl tw-font-bold tw-text-gray-900 tw-mb-3">
                        Comfortable Accommodation in Mahmoorganj
                     </h4>
                     <p class="tw-text-gray-600 tw-leading-relaxed tw-mb-3">
                        The focus of Hotel Sankalp is on offering a comfortable and secure stay for different types of travelers, whether you are visiting Varanasi with family, traveling for business, or exploring the spiritual attractions of the city.
                     </p>
                     <p class="tw-text-gray-600 tw-leading-relaxed tw-mb-3">
                        Allowing guests to choose a room according to their travel requirements, accommodation options include Family Rooms, Executive Triple Rooms, Executive Rooms, and Deluxe Rooms. This hotel also offers convenient facilities such as parking and 24-hour power backup. Guests can further enjoy dining at Satvik Restaurant, which offers a range of Indian, Continental, Asian, and vegan/healthy food options.
                     </p>
                     <p class="tw-text-gray-600 tw-leading-relaxed">
                        Hotel Sankalp offers a convenient stay for travelers visiting Varanasi with its Mahmoorganj location, comfortable rooms, dining facilities, and guest-focused approach.
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
@include('frontend.layouts.book-a-room')
@endsection