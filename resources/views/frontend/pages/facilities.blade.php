@extends('frontend.layouts.master')
@section('title','Hotel Sankalp - Hotel Facilities')
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
<section id="service-details2" class="pt-50 pb-20 p-relative">
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
<section class="tw-relative tw-py-16 md:tw-py-24 tw-px-6 sm:tw-px-6 lg:tw-px-8 tw-overflow-hidden tw-bg-[#ecd8b3]">
    <div class="tw-relative tw-max-w-7xl tw-mx-auto">
        <div class="tw-text-center tw-mb-10 md:tw-mb-8">
            <h4 class="tw-text-2xl sm:tw-text-2xl md:tw-text-3xl tw-mb-6 tw-text-[#101010]">
                Hotel for Corporate Event in Mahamoorganj
            </h4>
            <div class="tw-flex tw-items-center tw-justify-center tw-gap-3">
                <div class="tw-w-16 tw-h-px" style="background: linear-gradient(90deg, transparent, #78350f);"></div>
                <div class="tw-w-2 tw-h-2 tw-rotate-45" style="background:#78350f;"></div>
                <div class="tw-w-16 tw-h-px" style="background: linear-gradient(270deg, transparent, #78350f);"></div>
            </div>
        </div>
        <div class="tw-grid md:tw-grid-cols-2 tw-gap-8 md:tw-gap-10 tw-mb-8 md:tw-mb-10">
              <div class="tw-bg-white tw-rounded-2xl tw-p-4 md:tw-p-6
                tw-shadow-[0_15px_40px_-20px_rgba(120,53,15,0.25)]
                tw-border-t-[3px] tw-border-t-[#78350f]
                tw-transition-all tw-duration-300 tw-ease-in-out
                hover:tw--translate-y-2
                hover:tw-shadow-[0_20px_45px_-15px_rgba(120,53,15,0.35)]">
                <p>
                    Hotel Sankalp offer a practical setting for business and organizations who are looking for a hotel for corporate event in Mahamoorganj whether you are planning a business meeting, corporate gathering, or professional event requires a convenient venue where guests can meet, interact, and stay comfortably.
                </p>
            </div>
            <div class="tw-bg-white tw-rounded-2xl tw-p-4 md:tw-p-6
                tw-shadow-[0_15px_40px_-20px_rgba(120,53,15,0.25)]
                tw-border-t-[3px] tw-border-t-[#78350f]
                tw-transition-all tw-duration-300 tw-ease-in-out
                hover:tw--translate-y-2
                hover:tw-shadow-[0_20px_45px_-15px_rgba(120,53,15,0.35)]">
                <p>
                    The hotel combines accommodation with facilities designed to make a business stay more convenient while located in Mahmoorganj, Varanasi. Guests can choose from multiple room categories, making it easier to accommodate colleagues, visiting professionals, or corporate groups.
                </p>
            </div>
        </div>
        <div class="tw-mb-10">
            <h5 class="tw-text-2xl sm:tw-text-2xl md:tw-text-3xl tw-mb-6 tw-text-[#101010]">
                Convenient Facilities for Business Stays
            </h5>
            <div class="tw-mt-4 tw-w-16 tw-h-0.5" style="background:#78350f;"></div>
        </div>
        <div class="tw-space-y-6 md:tw-space-y-8 tw-mb-14 md:tw-mb-16">
            <div class="tw-relative tw-pl-6 md:tw-pl-8">
                <div class="tw-absolute tw-top-1 tw-left-0 tw-w-0.5 tw-h-full"
                    style="background: linear-gradient(180deg, #78350f 0%, rgba(120,53,15,0.15) 100%);"></div>
                <p>
                    Hotel Sankalp offers various facilities such as parking and 24-hour power backup that help guests to enjoy a smooth stay while traveling for professional requirements. The property also features event facilities suitable for gatherings and celebrations, while its restaurant offers a convenient dining option within the hotel.
                </p>
            </div>
            <div class="tw-relative tw-pl-6 md:tw-pl-8">
                <div class="tw-absolute tw-top-1 tw-left-0 tw-w-0.5 tw-h-full"
                    style="background: linear-gradient(180deg, #78350f 0%, rgba(120,53,15,0.15) 100%);"></div>
                <p>
                    Staying at the same property where meetings or gatherings take place can simplify the overall experience for corporate travelers. Teams can meet, dine, relax, and stay under one roof without the inconvenience of travelling between multiple locations. Hotel Sankalp offers a comfortable environment in Mahmoorganj whether you are arranging a corporate meeting, team gathering, business function, or professional get together.
                </p>
            </div>
        </div>
    </div>
</section>
@endif
@endsection