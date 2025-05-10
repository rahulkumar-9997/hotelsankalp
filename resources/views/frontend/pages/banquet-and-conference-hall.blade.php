@extends('frontend.layouts.master')
@section('title','Hotel Sankalp - Banquet and Conference Hall')
@section('description', 'Hotel Sankalp, The Hotel Facilities ')
@section('keywords', 'Qulity Room , Best Accommodation Hotel in varanasi, Wellness & Spa in varanasi, Varanasi Hotel, Luxury Hotel in Varanasi, Hotel sankalp facilities')

@section('main-content')
<section class="breadcrumb-area d-flex align-items-center" style="background-image:url('{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/banner.jpg') }}'); background-position: top;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-12 col-lg-12">
                <div class="breadcrumb-wrap text-center">
                    <div class="breadcrumb-title">
                        <h2>Banquet and Conference Hall</h2>
                        <div class="breadcrumb-wrap">

                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="{{URL::to('/')}}">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">
                                        Banquet and Conference Hall
                                    </li>
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
<section class="about-area about-p pt-40 pb-40 p-relative fix dining-and-timing-section">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <div class="section-title mantram-section center-align mb-20 text-center">
                    <h1>Mantram Hall</h1>
                </div>
            </div> 
        </div>
        <div class="row align-items-center">
            <div class="col-lg-6 col-md-12 col-sm-12">
                <div class="p-relative  wow fadeInLeft timing-img  animated" data-animation="fadeInLeft" data-delay=".4s">
                    <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/10.jpg') }}" alt="img" loading="lazy">
                </div>
            </div>
            <div class="col-lg-6 col-md-12 col-sm-12">
                <div class="about-content s-about-content  wow fadeInRight   pl-30 animated" data-animation="fadeInRight" data-delay=".4s">
                    <div class="opening-time">
                        <div class="about-title second-title pb-10">
                            <h2>Banquet Capacity</h2>
                        </div>
                        <div class="about-content3 mt-10">
                            <div class="row justify-content-center align-items-center">
                                <div class="col-md-12">
                                    <ul class="green mb-10">
                                        <li>100-250 guests</li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="seating">
                        <div class="about-title second-title pb-10">
                            <h2>Banquet Area </h2>
                        </div>
                        <div class="about-content3 mt-10">
                            <div class="row justify-content-center align-items-center">
                                <div class="col-md-12">
                                    <ul class="green mb-10">
                                        <li>2500 sq.ft</li>
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
<section id="service-details2" class="pt-40 pb-60 p-relative restaurant-page" style="background-color: #dac193;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <div class="section-title center-align mb-20 text-center">
                    <h1>Ideal For</h1>
                </div>
            </div>            
            <div class="col-lg-4 col-md-6 mb-2">
                <div class="whatnew-box-two">
                    <div class="confrence-box-ye">
                        <div class="about-item-icon">
                            <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/icon/wedding.png') }}" alt="Weddings & Receptions Engagement" loading="lazy">
                        </div>
                        <div class="conference-box-price">
                            <h1>Weddings, Receptions & Engagement</h1>
                            <div class="bookantable">
                                <a href="javascript:void(0)"
                                    data-title="Book a Table"
                                    data-url="{{ route('book.a.table') }}"
                                    data-size="lg" class="animated-border book-a-table-a">
                                    Book a Table
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-2">
                <div class="whatnew-box-two">
                    <div class="confrence-box-ye">
                        <div class="about-item-icon">
                            <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/icon/birthday.png') }}" alt="Birthday & Anniversary Parties" loading="lazy">
                        </div>
                        <div class="conference-box-price">
                            <h1>Birthday & Anniversary Parties</h1>
                            <div class="bookantable">
                                <a href="javascript:void(0)"
                                    data-title="Book a Table"
                                    data-url="{{ route('book.a.table') }}"
                                    data-size="lg" class="animated-border book-a-table-a">
                                    Book a Table
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-2">
                <div class="whatnew-box-two">
                    <div class="confrence-box-ye">
                        <div class="about-item-icon">
                            <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/icon/festive.png') }}" alt="Festive Celebrations Many More" loading="lazy">
                        </div>
                        <div class="conference-box-price">
                            <h1>Festive Celebrations & Many More</h1>
                            <div class="bookantable">
                                <a href="javascript:void(0)"
                                    data-title="Book a Table"
                                    data-url="{{ route('book.a.table') }}"
                                    data-size="lg" class="animated-border book-a-table-a">
                                    Book a Table
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="profile fix pt-20 pb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="restaurant-grid">
                    <div class="row grid-services">
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/10.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/10.jpg') }}" alt="img" class="img" loading="lazy">
                                </figure>
                            </a>
                        </div>
                        <!-- <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/11.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/11.jpg') }}" alt="img" class="img" loading="lazy">
                                </figure>
                            </a>
                        </div> -->
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/2.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/2.jpg') }}" alt="img" class="img" loading="lazy">
                                </figure>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/4.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/4.jpg') }}" alt="img" class="img" loading="lazy">
                                </figure>
                            </a>
                        </div>

                        <!-- <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/7.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/7.jpg') }}" alt="img" class="img">
                                </figure>
                            </a>
                        </div> -->

                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/9.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/9.jpg') }}" alt="img" class="img" loading="lazy">
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