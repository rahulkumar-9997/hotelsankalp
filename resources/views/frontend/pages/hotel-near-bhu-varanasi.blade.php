@extends('frontend.layouts.master')
@section('title','Hotel near BHU Varanasi - Hotel Sankalp')
@section('description', 'Looking for a Hotel near BHU Varanasi? Hotel Sankalp in Mahmoorganj offers comfortable rooms for families and groups with easy access to major attractions of Varanasi.')
@section('keywords', 'Hotel near BHU Varanasi, BHU Varanasi Hotel, Hotel in Mahmoorganj, Family Hotel Varanasi, Hotel Sankalp Varanasi')

@section('main-content')
<section class="breadcrumb-area d-flex align-items-center" style="background-image:url('{{asset('fronted/hotelsankalp-img/breadcrub/bread-3.jpg') }}'); background-position: top;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-12 col-lg-12">
                <div class="breadcrumb-wrap text-center">
                    <div class="breadcrumb-title">
                        <h2>Hotel near BHU, Varanasi</h2>
                        <div class="breadcrumb-wrap">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="{{URL::to('/')}}">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Hotel near BHU, Varanasi</li>
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

<!-- ============ MAIN CONTENT SECTION ============ -->
<section class="tw-relative tw-py-16 md:tw-py-24 tw-px-6 sm:tw-px-6 lg:tw-px-8 tw-overflow-hidden" style="background: linear-gradient(180deg, #ecd8b3 0%, #f5e6c8 100%);">
    <div class="tw-absolute tw-inset-0 tw-pointer-events-none tw-opacity-[0.05]"
        style="background-image: radial-gradient(circle, #78350f 1px, transparent 1px); background-size: 30px 30px;"></div>
    <div class="tw-absolute -tw-top-40 -tw-right-40 tw-w-[600px] tw-h-[600px] tw-rounded-full tw-pointer-events-none"
        style="background: radial-gradient(circle, rgba(255,255,255,0.6) 0%, transparent 70%);"></div>
    <div class="tw-absolute -tw-bottom-40 -tw-left-40 tw-w-[500px] tw-h-[500px] tw-rounded-full tw-pointer-events-none"
        style="background: radial-gradient(circle, rgba(217,119,6,0.2) 0%, transparent 70%);"></div>

    <div class="tw-relative tw-max-w-7xl tw-mx-auto">
        <div class="tw-text-center tw-mb-6">
            <div class="tw-flex tw-items-center tw-justify-center tw-gap-2 tw-mb-6">
                <div class="tw-w-10 tw-h-px" style="background: linear-gradient(90deg, transparent, #78350f);"></div>
                <div class="tw-w-1.5 tw-h-1.5 tw-rotate-45" style="background:#78350f;"></div>
                <div class="tw-w-2 tw-h-2 tw-rotate-45" style="background:#78350f;"></div>
                <div class="tw-w-1.5 tw-h-1.5 tw-rotate-45" style="background:#78350f;"></div>
                <div class="tw-w-10 tw-h-px" style="background: linear-gradient(270deg, transparent, #78350f);"></div>
            </div>
            <h1 class="tw-text-3xl md:tw-text-4xl tw-mb-3 tw-text-[#101010]">
                Hotel near BHU,
                Varanasi
            </h1>
        </div>
        <div class="tw-grid md:tw-grid-cols-2 tw-gap-6 md:tw-gap-8 tw-mb-12">
            <div class="tw-bg-white tw-rounded-2xl tw-p-6 md:tw-p-8"
                style="box-shadow: 0 20px 50px -25px rgba(120,53,15,0.3);">
                <p>
                    Visiting Varanasi for education, work, family commitments, or sightseeing often means looking for accommodation that combines comfort with convenient access to important areas of the city. Hotel Sankalp in Mahmoorganj provides a peaceful and comfortable base for travelers who want to explore Varanasi, and its surrounding destinations.
                </p>
            </div>

            <div class="tw-bg-white tw-rounded-2xl tw-p-6 md:tw-p-8"
                style="box-shadow: 0 20px 50px -25px rgba(120,53,15,0.3);">
                <p>
                    Hotel Sankalp offer a convenient accommodation options in the city, if you are looking for a Hotel near BHU Varanasi. Located at B-38/8-3, Raghunath Nagar Colony, Mahmoorganj, the hotel offers comfortable rooms and guest facilities for different types of travelers.
                </p>
            </div>
        </div>
        <h2 class="tw-text-2xl md:tw-text-3xl tw-mb-3 tw-text-[#101010]">
            Accommodation for Families and Groups
        </h2>
        <p>
            Hotel Sankalp offers various rooms such as Family Rooms, Executive Triple Rooms, Executive Rooms, and Deluxe Rooms. These options make it easier for families, groups, business travelers, and individual guests to select accommodation according to their requirements. This property also offer parking, and 24 hours power backup facility to help guests who want to enjoy a convenient stay.
        </p>
        <h2 class="tw-text-2xl md:tw-text-3xl tw-mb-3 tw-text-[#101010] tw-mt-8">
            Explore Varanasi from a Convenient Location
        </h2>
        <div class="tw-space-y-5">
            <p>
                At Hotel Sankalp, you get a chance to explore some of the popular attractions in Varanasi during your visit. Kashi Vishwanath Mandir is about 4.1 km away, Dashashwamedh Ghat is around 4 km away and Assi Ghat is roughly 4.5 km away.
            </p>
            <p>
                You can also eat at Satvik Restaurant which serves Indian, Continental, Asian and vegan/healthy food. The restaurant has indoor seating for up to 70 guests and outdoor seating for 20 guests.
            </p>
            <p>
                Hotel Sankalp offer a comfortable place to stay while you experience the many sides of Varanasi if you are visiting Varanasi for an academic purpose or family requirement or business trip or city exploration.
            </p>
        </div>
    </div>
</section>
@endsection