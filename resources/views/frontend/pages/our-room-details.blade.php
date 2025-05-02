@extends('frontend.layouts.master')
@section('title', 'Hotel Sankalp - ' . $data['room_details']->title)
@section('description', \Illuminate\Support\Str::limit($data['room_details']->details, 160))
@section('main-content')
@php
$firstImage = $data['room_details']->images->first();
@endphp
<section class="room-details-bread breadcrumb-area d-flex align-items-center" style="background-image:url('{{ $firstImage ? asset('hotel-sankalp-image-file/room-image/large/' . $firstImage->image_path) : asset('fronted/hotelsankalp-img/new-12-24/bread/1.jpg') }}')">
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
                                    <li class="breadcrumb-item">
                                        <a href="{{ route('our-room')}}">Our Room</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">{{ $data['room_details']->title }}</li>
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
<div class="about-area5 about-p p-relative room-details">
    <div class="container pt-50 pb-40">
        <div class="row">
            <!-- #right side -->
            <div class="col-sm-12 col-md-12 col-lg-4 order-2">
                <aside class="sidebar services-sidebar">
                    <div class="sidebar-widget categories">
                        <div class="widget-content">
                            <h2 class="widget-title"> Book This {{ $data['room_details']->title }} </h2>
                            <!-- Services Category -->
                            <!-- booking-area -->
                            <div class="booking">
                                <div class="contact-bg">
                                    <form action="{{route('book-a-room.store')}}" method="post" class="contact-form mt-30" id="roomDetailsBookRoom">
                                        @csrf
                                        <input type="hidden" value="{{ $data['room_details']->title }}" name="room_type">

                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="contact-field p-relative c-name mb-10">
                                                    <label><i class="fal fa-badge-check"></i> Check In Date</label>
                                                    <input type="date" id="check_in_date" name="check_in_date" class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="contact-field p-relative c-subject mb-10">
                                                    <label><i class="fal fa-times-octagon"></i> Check Out Date</label>
                                                    <input type="date" id="check_out_date" name="check_out_date" class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="contact-field p-relative c-subject mb-10">
                                                    <label><i class="fal fa-concierge-bell"></i> No. of Rooms</label>
                                                    <select name="no_of_room" id="no_of_room" class="home-room form-control">
                                                        <option value="">Select Room</option>
                                                        @for ($i = 1; $i <= 9; $i++)
                                                            <option value="{{ $i }}">{{ $i }}</option>
                                                            @endfor
                                                            <option value="10+">10+</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="contact-field p-relative c-subject mb-10">
                                                    <label><i class="fal fa-users"></i> Contact Person</label>
                                                    <input type="text" id="contact_person_name" name="contact_person_name" placeholder="Contact person name" class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="contact-field p-relative c-subject mb-10">
                                                    <label><i class="fal fa-mail-bulk"></i> Email ID</label>
                                                    <input type="email" id="email" name="email" placeholder="Email id" class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="contact-field p-relative c-subject mb-10">
                                                    <label><i class="fal fa-mobile"></i> Phone No.</label>
                                                    <input type="text" id="phone_number" name="phone_number" maxlength="10" placeholder="Phone/Mobile No." class="form-control">
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="slider-btn mt-15">
                                                    <button class="btn ss-btn" type="submit" data-animation="fadeInRight" data-delay=".8s"><span>Submit</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div>
                            <!-- booking-area-end -->
                        </div>
                    </div>
                    <!--Service Contact-->
                    <div class="service-detail-contact wow fadeup-animation animated" data-wow-delay="1.1s" style="visibility: visible; animation-delay: 1.1s;">
                        <h3 class="h3-title">If You Need Any Help Contact With Us</h3>
                        <a href="href=tel:+919005050196" title="Call now">+91-9005050196</a>
                    </div>

                </aside>
            </div>
            <!-- #right side end -->
            <div class="col-lg-8 col-md-12 col-sm-12 order-1">
                <div class="row align-items-center mb-20">
                    <div class="col-lg-12 col-md-12">
                        <div class="price">
                            <h1>{{ $data['room_details']->title }}</h1>
                            <span>Rs {{ $data['room_details']->room_price }} / + Tax</span>
                        </div>
                    </div>
                </div>
                <div class="two-column">
                    <div class="row">
                        <div class="image-column col-xl-12 col-lg-12 col-md-12">
                            <div id="hotelRoomCarousel" class="carousel slide" data-bs-ride="carousel">
                                <div class="carousel-inner">

                                    @foreach ($data['room_details']->images as $key => $image)
                                    <div class="carousel-item {{ $key === 0 ? 'active' : '' }}">
                                        <div class="room-de-carousel">
                                            <a class="lightbox" data-fancybox="images-{{ $data['room_details']->id }}" data-caption="{{ $data['room_details']->title }}" href="{{ asset('hotel-sankalp-image-file/room-image/large/'. $image->image_path ) }}" title="{{ $data['room_details']->title }}">
                                                <img src="{{ asset('hotel-sankalp-image-file/room-image/large/'. $image->image_path ) }}" class="d-block w-100" alt="{{ $data['room_details']->title }}">
                                            </a>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                                <button class="carousel-control-prev" type="button" data-bs-target="#hotelRoomCarousel" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#hotelRoomCarousel" data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="service-detail">
                    <div class="content-box">
                        <p>
                            {!! strip_tags($data['room_details']->details) !!}
                        </p>
                        <h3>Room Feature.</h3>
                        <ul class="room-features d-flex align-items-center">
                            <li>
                                <i class="fal fa-tv-retro"></i> TV
                            </li>
                            <li>
                                <i class="fal fa-wifi"></i> Free Wifi
                            </li>
                            <li>
                                <i class="fal fa-air-conditioner"></i> Air Condition
                            </li>
                            <li>
                                <i class="fal fa-dumpster-fire"></i> Heater
                            </li>
                            <li>
                                <i class="fal fa-phone-rotary"></i> Phone
                            </li>

                            <li>
                                <i class="fal fa-dryer-alt"></i> Laundry
                            </li>
                            <!-- <li>
                                <i class="fal fa-bed"></i> Bed Type: One bed
                            </li> -->
                        </ul>
                        <!-- <div class="mb-50">
                            <a href="contact.html" class="btn ss-btn">Book This Room</a>
                        </div> -->
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection