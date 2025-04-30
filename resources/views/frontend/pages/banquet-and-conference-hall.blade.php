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
<section class="profile fix pt-50 pb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="restaurant-grid">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/2.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/2.jpg') }}" alt="img" class="img">
                                </figure>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/4.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/4.jpg') }}" alt="img" class="img">
                                </figure>
                            </a>
                        </div>
                        
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/7.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/7.jpg') }}" alt="img" class="img">
                                </figure>
                            </a>
                        </div>
                        
                        <div class="col-lg-6 col-md-6 mb-10 mb-xl-2 pe-xl-0 ps-xl-2">
                            <a class="popup-image" href="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/9.jpg') }}">
                                <figure class="gallery-image">
                                    <img src="{{asset('fronted/hotelsankalp-img/banquet-and-conference-hall/9.jpg') }}" alt="img" class="img">
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