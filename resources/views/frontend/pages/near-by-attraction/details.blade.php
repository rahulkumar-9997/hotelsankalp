@extends('frontend.layouts.master')
@section('title', $data['attraction']->title . ' - Hotel Sankalp Varanasi')
@section('description', Str::limit(strip_tags($data['attraction']->description), 155))
@section('keywords', $data['attraction']->title . ', Near by Attractions Varanasi, Places to visit near Hotel Sankalp, Hotel Sankalp')

@section('main-content')
<section class="breadcrumb-area d-flex align-items-center" style="background-image:url('{{asset('fronted/hotelsankalp-img/new-12-24/bread/4.jpg') }}')">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-12 col-lg-12">
                <div class="breadcrumb-wrap text-center">
                    <div class="breadcrumb-title">
                        <h2>{{ $data['attraction']->title }}</h2>
                        <!-- <div class="breadcrumb-wrap">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="{{URL::to('/')}}">Home</a>
                                    </li>
                                    <li class="breadcrumb-item">
                                        <a href="{{ route('near-by-attraction') }}">Near by Attractions</a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">{{ $data['attraction']->title }}</li>
                                </ol>
                            </nav>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="overlay"></div>
</section>

<section class="tw-relative tw-py-10 md:tw-py-16 tw-px-4 sm:tw-px-6 lg:tw-px-8 tw-overflow-hidden" style="background: linear-gradient(180deg, #ecd8b3 0%, #f5e6c8 100%);">    
    <div class="tw-relative tw-max-w-7xl tw-mx-auto">
        <h1 class="tw-text-2xl md:tw-text-4xl tw-text-center tw-mb-10 tw-text-[#101010]">
            {{ $data['attraction']->title }}
        </h1>
        <div class="tw-grid lg:tw-grid-cols-12 tw-gap-8 lg:tw-gap-10">
            <div class="lg:tw-col-span-8">
                @if($data['attraction']->image_file)
                <div class="tw-relative tw-rounded-2xl tw-overflow-hidden tw-mb-8"
                    style="box-shadow: 0 30px 70px -30px rgba(69,26,3,0.55);">
                    <img src="{{ asset('hotel-sankalp-image-file/near-by-img/' . $data['attraction']->image_file) }}"
                        alt="{{ $data['attraction']->title }}"
                        class="tw-w-full tw-h-auto tw-block"
                        loading="lazy">
                    
                </div>
                @endif
                @if($data['attraction']->description)
                <div class="tw-relative attraction-description">                    
                    <div class="tw-text-base md:tw-text-lg tw-leading-[1.9] tw-font-light" style="color:#3b1e08;">
                        {!! $data['attraction']->description !!}
                    </div>                   
                </div>
                @endif
            </div>
            <div class="lg:tw-col-span-4">
                <div class="tw-sticky tw-top-24">
                    <div class="tw-relative tw-rounded-2xl tw-p-6 md:tw-p-7 tw-overflow-hidden tw-bg-white"
                        style="box-shadow: 0 30px 70px -25px rgba(120,53,15,0.25); border: 1px solid rgba(120,53,15,0.1);">
                        <div class="tw-relative">
                            <h2 class="tw-text-xl md:tw-text-2xl tw-font-serif tw-font-bold tw-leading-snug tw-mb-5" style="color:#101010;">
                                Related
                                <span class="tw-italic tw-font-normal" style="color:#644222;">
                                    Attractions
                                </span>
                            </h2>
                            <div class="tw-h-px tw-w-full tw-mb-5"
                                style="background: linear-gradient(90deg, rgba(120,53,15,0.3), transparent);"></div>
                            @if($data['nearby_attractions']->isNotEmpty())
                            <div class="tw-space-y-3">
                                @foreach($data['nearby_attractions'] as $related)
                                <a href="{{ route('near-by-attraction.details', $related->slug) }}"
                                    class="tw-group tw-flex tw-items-center tw-gap-3 tw-p-2 tw-rounded-lg tw-transition-all tw-duration-300"
                                    style="background: rgba(120,53,15,0.04); border: 1px solid rgba(120,53,15,0.1);"
                                    onmouseover="this.style.background='rgba(120,53,15,0.08)'; this.style.borderColor='rgba(120,53,15,0.25)';"
                                    onmouseout="this.style.background='rgba(120,53,15,0.04)'; this.style.borderColor='rgba(120,53,15,0.1)';">
                                    @if($related->image_file)
                                    <div class="tw-flex-shrink-0 tw-relative tw-w-16 tw-h-16 tw-rounded-md tw-overflow-hidden"
                                        style="border: 1px solid rgba(120,53,15,0.15);">
                                        <img src="{{ asset('hotel-sankalp-image-file/near-by-img/' . $related->image_file) }}"
                                            alt="{{ $related->title }}"
                                            class="tw-w-full tw-h-full tw-object-cover tw-transition-transform tw-duration-500 group-hover:tw-scale-110"
                                            loading="lazy">
                                    </div>
                                    @endif
                                    <div class="tw-flex-1 tw-min-w-0">
                                        <h3 class="tw-text-sm tw-text-[#101010] tw-font-medium tw-leading-snug tw-transition-colors tw-duration-300 tw-truncate">
                                            {{ $related->title }}
                                        </h3>
                                        <div class="tw-flex tw-items-center tw-gap-1.5 tw-mt-1">
                                            <span class="tw-text-[9px] tw-font-bold tw-uppercase tw-tracking-[0.2em]" style="color:#78350f;">
                                                View
                                            </span>
                                            <svg class="tw-w-2.5 tw-h-2.5 tw-transition-transform tw-duration-300 group-hover:tw-translate-x-1"
                                                style="color:#78350f;" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M17 8l4 4m0 0l-4 4m4-4H3" />
                                            </svg>
                                        </div>
                                    </div>
                                </a>
                                @endforeach
                            </div>
                            @endif
                            <div class="tw-mt-6 tw-pt-5" style="border-top: 1px solid rgba(120,53,15,0.15);">
                                <a href="{{ route('near-by-attraction') }}"
                                    class="tw-inline-flex tw-items-center tw-gap-2 tw-text-[10px] tw-font-bold tw-uppercase tw-tracking-[0.3em] tw-transition-all tw-duration-300 hover:tw-gap-3"
                                    style="color:#78350f;">
                                    <svg class="tw-w-3 tw-h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2.5" d="M7 16l-4-4m0 0l4-4m-4 4h18" />
                                    </svg>
                                    Back to All
                                </a>
                            </div>

                        </div>
                    </div>

                </div>
            </div>

        </div>

    </div>
</section>
@endsection