@extends('frontend.layouts.master')
@section('title','Hotel Sankalp - Restaurant')
@section('description', 'Hotel Sankalp, The Hotel Facilities ')
@section('keywords', 'Qulity Room , Best Accommodation Hotel in varanasi, Wellness & Spa in varanasi, Varanasi Hotel, Luxury Hotel in Varanasi, Hotel sankalp facilities')

@section('main-content')
<section class="breadcrumb-area d-flex align-items-center" style="background-image:url('{{asset('fronted/hotelsankalp-img/restaurant/banner.jpg') }}'); background-position: top;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-12 col-lg-12">
                <div class="breadcrumb-wrap text-center">
                    <div class="breadcrumb-title">
                        <h2>Restaurant</h2>
                        <div class="breadcrumb-wrap">

                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="{{URL::to('/')}}">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">
                                        Restaurant
                                    </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <div class="book-a-table-btn">
                        <div class="btnt mt-3">
                            <a href="javascript:void(0)"
                            data-title="Book a Table"
                            data-url="{{ route('book.a.table') }}"
                            data-size="lg" class="animated-border book-a-table-a">Book a Table</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="overlay"></div>
</section>
<section id="service-details2" class="pt-40 pb-50 p-relative restaurant-page">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <div class="section-title center-align mb-20 text-center">
                    <h3>
                        Dine in Elegance – A Culinary Experience at Satvik Restaurant
                    </h3>

                    <h1>Cuisines We Serve</h1>
                </div>

            </div>

            <div class="col-lg-3 col-md-6 mb-2">
                <div class="whatnew-box-two">
                    <div class="confrence-box-ye">
                        <div class="about-item-icon">
                            <img src="{{asset('fronted/hotelsankalp-img/restaurant/icon/indian.png') }}" alt="Indian" loading="lazy">
                        </div>
                        <div class="conference-box-price">
                            <h1>Indian</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-2">
                <div class="whatnew-box-two">
                    <div class="confrence-box-ye">
                        <div class="about-item-icon">
                            <img src="{{ asset('fronted/hotelsankalp-img/restaurant/icon/continental.png') }}" alt="Continental" loading="lazy">
                        </div>
                        <div class="conference-box-price">
                            <h1>Continental</h1>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 mb-2">
                <div class="whatnew-box-two">
                    <div class="confrence-box-ye">
                        <div class="about-item-icon">
                            <img src="{{asset('fronted/hotelsankalp-img/restaurant/icon/asian.png') }}" alt="Asian" loading="lazy">
                        </div>
                        <div class="conference-box-price">
                            <h1>Asian</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 mb-2">
                <div class="whatnew-box-two">
                    <div class="confrence-box-ye">
                        <div class="about-item-icon">
                            <img src="{{asset('fronted/hotelsankalp-img/restaurant/icon/vegan.png')}}" alt="Vegan/Healthy options" loading="lazy">
                        </div>
                        <div class="conference-box-price">
                            <h1>Vegan/Healthy options</h1>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-12">
                <div class="mt-3 text-center">
                    <a href="{{asset('fronted/hotelsankalp-img/new-satvik-restaurant-menu.pdf') }}" class="btn ss-btn smoth-scroll" target="_blank">View Menu</a>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="about-area about-p pt-60 pb-60 p-relative fix dining-and-timing-section" style="background-color: #dac193;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-12 col-sm-12">
                <div class="p-relative  wow fadeInLeft timing-img  animated" data-animation="fadeInLeft" data-delay=".4s">
                    <img src="{{asset('fronted/hotelsankalp-img/restaurant/timining.png') }}" alt="img" loading="lazy">
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12">
                <div class="about-content s-about-content  wow fadeInRight animated" data-animation="fadeInRight" data-delay=".4s">
                    <div class="res-content-area">
                        <p>
                            Satvik Restaurant at Hotel Sankalp offers a warm and inviting dining experience, perfect for every occasion. Serving breakfast from 7 AM to 10:30 AM, lunch from 12 PM to 3 PM, and dinner from 7 PM to 11 PM, it’s the ideal place to enjoy delicious meals throughout the day. The restaurant features comfortable indoor seating for up to 70 guests and a charming rooftop space that accommodates 20 guests—perfect for romantic dinners under the stars. Whether you're dining with family or planning a special evening, Satvik promises great food in a cozy and elegant setting.
                        </p>
                    </div>
                    <div class="opening-time">
                        <div class="about-title second-title">
                            <h2>Dining Options & Timings</h2>
                        </div>
                        <div class="about-content3 mt-10">
                            <div class="row justify-content-center align-items-center">
                                <div class="col-md-12">
                                    <ul class="green mb-10">
                                        <li>Breakfast: 7 AM – 10:30 AM</li>
                                        <li>Lunch: 12 PM – 3 PM</li>
                                        <li>Dinner: 7 PM – 11 PM</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="seating">
                        <div class="about-title second-title">
                            <h2>Ambience & Seating</h2>
                        </div>
                        <div class="about-content3 mt-10">
                            <div class="row justify-content-center align-items-center">
                                <div class="col-md-12">
                                    <ul class="green mb-10">
                                        <li>Indoor seating - 70 guests</li>
                                        <li>Outdoor seating - 20 guests</li>
                                        <li>Cozy for families, ideal for romantic dinners</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<section class="profile fix pt-40 pb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="restaurant-grid">
                    <div class="row grid-services">
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/restaurant/1.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/restaurant/1.jpg') }}" alt="img" class="img" loading="lazy">
                                </figure>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/restaurant/2.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/restaurant/2.jpg') }}" alt="img" class="img" loading="lazy">
                                </figure>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/restaurant/3.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/restaurant/3.jpg') }}" alt="img" class="img" loading="lazy">
                                </figure>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/restaurant/4.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/restaurant/4.jpg') }}" alt="img" class="img" loading="lazy">
                                </figure>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/restaurant/5.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/restaurant/5.jpg') }}" alt="img" class="img" loading="lazy">
                                </figure>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/restaurant/6.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/restaurant/6.jpg') }}" alt="img" class="img" loading="lazy">
                                </figure>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection