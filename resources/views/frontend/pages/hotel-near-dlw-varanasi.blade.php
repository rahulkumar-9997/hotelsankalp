@extends('frontend.layouts.master')
@section('title','Hotel near BLW Varanasi - Hotel Sankalp')
@section('description', 'Looking for a Hotel near BLW, Varanasi? Hotel Sankalp in Mahmoorganj offers comfortable rooms, essential facilities, and easy access to major attractions of Varanasi.')
@section('keywords', 'Hotel near BLW Varanasi, BLW Varanasi Hotel, Hotel in Mahmoorganj, Budget Hotel Varanasi, Hotel Sankalp Varanasi')

@section('main-content')
<section class="breadcrumb-area d-flex align-items-center" style="background-image:url('{{asset('fronted/hotelsankalp-img/breadcrub/bread-3.jpg') }}'); background-position: top;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-12 col-lg-12">
                <div class="breadcrumb-wrap text-center">
                    <div class="breadcrumb-title">
                        <h2>Hotel near BLW, Varanasi</h2>
                        <div class="breadcrumb-wrap">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="{{URL::to('/')}}">Home</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Hotel near BLW, Varanasi</li>
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
<section class="tw-relative tw-py-16 md:tw-py-24 tw-px-6 sm:tw-px-6 lg:tw-px-8  tw-overflow-hidden" style="background: linear-gradient(180deg, #ecd8b3 0%, #f5e6c8 100%);">
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
                Hotel near DLW,
                Varanasi                
            </h1>
        </div>
        <div class="tw-grid md:tw-grid-cols-2 tw-gap-6 md:tw-gap-8 tw-mb-12">
            <div class="tw-bg-white tw-rounded-2xl tw-p-6 md:tw-p-8"
                style="box-shadow: 0 20px 50px -25px rgba(120,53,15,0.3);">
                <p>
                    Finding comfortable accommodation close to an important destination can make a business or personal trip much easier. Hotel Sankalp is located in Mahmoorganj, Varanasi, that offer travelers a comfortable base for exploring the city and reaching various major attractions of Varanasi.
                </p>
            </div>

            <div class="tw-bg-white tw-rounded-2xl tw-p-6 md:tw-p-8"
                style="box-shadow: 0 20px 50px -25px rgba(120,53,15,0.3);">
                <p>
                    Hotel Sankalp offer a practical stay with comfortable rooms, and essential facilities for guests who are looking for a Hotel near BLW, Varanasi. The property is located at B-38/8-3, Raghunath Nagar Colony, Mahmoorganj, Varanasi, making it suitable for travelers who want to stay in a well-connected part of the city.
                </p>
            </div>
        </div>
        <h2 class="tw-text-2xl md:tw-text-3xl tw-mb-3 tw-text-[#101010]">
            Comfortable Rooms for Different Travelers
        </h2>
        <p>
            Different traveler has different accommodation requirement for stay and Hotel Sankalp offer Family Rooms, Executive Triple Rooms, Executive Rooms, and Deluxe Rooms, allowing guests to choose according to their group size and preferences. With the additional convenience for both short, and extended stays, this hotel also offer parking, and 24 hours power backup facility.
        </p>
        <h2 class="tw-text-2xl md:tw-text-3xl tw-mb-3 tw-text-[#101010]">
            Convenient Stay with Dining Facilities
        </h2>
        <div class="tw-space-y-5">
            <p>
                Guests can enjoy a meal at Satvik Restaurant within the hotel after a busy day as the restaurant offer various tastes such as Indian, Continental, Asian, and vegan/healthy options and provides indoor seating for up to 70 guests along with outdoor seating for 20 guests.
            </p>
            <p>
                Hotel Sankalp also offers convenient access to various popular attractions of Varanasi as the Kashi Vishwanath Mandir is approximately 4.1 km away, Dashashwamedh Ghat around 4 km, and Assi Ghat around 4.5 km from the property.
            </p>

            <p>
                Hotel Sankalp offer a comfortable base in Varanasi whether your visit is related to work, education, sightseeing, pilgrimage, or family travel. Choose a convenient stay and enjoy easier access to your destinations around the city.
            </p>
        </div>

    </div>
</section>
@endsection