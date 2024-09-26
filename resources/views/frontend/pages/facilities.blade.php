@extends('frontend.layouts.master')
@section('title','Hotel Sankalp :: Hotel Facilities')
@section('description', 'Hotel Sankalp, The Hotel Facilities ')
@section('keywords', 'Qulity Room , Best Accommodation Hotel in varanasi, Wellness & Spa in varanasi, Varanasi Hotel, Luxury Hotel in Varanasi, Hotel sankalp facilities')

@section('main-content')
    <section class="breadcrumb-area d-flex align-items-center" style="background-image:url('{{asset('fronted/hotelsankalp-img/breadcrub/bread-3.jpg') }}')">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-12 col-lg-12">
                    <div class="breadcrumb-wrap text-center">
                        <div class="breadcrumb-title">
                            <h2>Facilities</h2>    
                            <div class="breadcrumb-wrap">
                        
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{URL::to('/')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Facilities</li>
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
    @if (isset($data['hotel_facilities']) && $data['hotel_facilities']->count() > 0)
    <section id="service-details2" class="pt-120 pb-90 p-relative">
        <div class="animations-01">
            <img src="{{asset('fronted/img/bg/an-img-01.png')}}" alt="an-img-01">
        </div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section-title center-align mb-50 text-center">
                    <h5>Explore</h5>
                    <h2>
                        The Hotel Facilities
                    </h2>
                    <!-- <p>Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel</p> -->
                    </div>
                </div>
                @foreach($data['hotel_facilities'] as $hotel_facilities_row)
                    <div class="col-lg-4 col-md-6">
                        <div class="services-08-item mb-30">
                        <div class="services-icon2">
                            <img src="{{ asset('hotel-sankalp-image-file/facilities-icon/'. $hotel_facilities_row->facilities_icon) }}" alt="{{ $hotel_facilities_row->title }}">
                        </div>
                        <div class="services-08-thumb">
                            <img src="{{ asset('hotel-sankalp-image-file/facilities-icon/'. $hotel_facilities_row->facilities_icon) }}" alt="{{ $hotel_facilities_row->title }}">
                        </div>
                        <div class="services-08-content">
                            <h3>
                                <a href="#">
                                {{ $hotel_facilities_row->title }}
                                </a>
                            </h3>
                            <p>
                                {!! strip_tags(substr($hotel_facilities_row->facilities_content, 0, 200)) !!}
                            </p>
                            <a href="#">Read More <i class="fal fa-long-arrow-right"></i></a>
                        </div>
                        </div>
                    </div>
                @endforeach
                
            </div>
        </div>
    </section>
    @endif
    @include('frontend.layouts.book-a-room')
    
@endsection