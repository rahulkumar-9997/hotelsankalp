@extends('frontend.layouts.master')
@section('title','Near by Attractions - Hotel Sankalp Varanasi')
@section('description', 'Explore the popular attractions near Hotel Sankalp in Varanasi. Kashi Vishwanath Mandir, Dashashwamedh Ghat, Assi Ghat and more, all within easy reach.')
@section('keywords', 'Near by Attractions Varanasi, Places to visit near Hotel Sankalp, Varanasi Attractions, Kashi Vishwanath Mandir, Dashashwamedh Ghat, Assi Ghat')

@section('main-content')
<section class="breadcrumb-area d-flex align-items-center" style="background-image:url('{{asset('fronted/hotelsankalp-img/new-12-24/bread/4.jpg') }}')">
   <div class="container">
      <div class="row align-items-center">
         <div class="col-xl-12 col-lg-12">
            <div class="breadcrumb-wrap text-center">
               <div class="breadcrumb-title">
                  <h2>Near by Attractions</h2>
                  <div class="breadcrumb-wrap">
                     <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                           <li class="breadcrumb-item">
                              <a href="{{URL::to('/')}}">Home</a>
                           </li>
                           <li class="breadcrumb-item active" aria-current="page">Near by Attractions</li>
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

@if($data['nearby_attractions']->isNotEmpty())
<section id="blog" class="blog-area p-relative fix pt-40 pb-40 near-by-attraction-section">
   <div class="container">
      <!-- <div class="row align-items-center">
         <div class="col-lg-12">
            <div class="section-title center-align mb-40 text-center wow fadeInDown animated" data-animation="fadeInDown" data-delay=".4s">
               <h2>Near by Attractions</h2>
            </div>
         </div>
      </div> -->
      <div class="row">
         @foreach($data['nearby_attractions'] as $attraction)
         <div class="col-lg-3 col-md-6">
            <div class="single-post2 hover-zoomin mb-20 wow fadeInUp animated" data-animation="fadeInUp" data-delay=".4s">
               @if($attraction->image_file)
               <div class="blog-thumb2">
                  <a href="{{ route('near-by-attraction.details', $attraction->slug) }}">
                     <img src="{{ asset('hotel-sankalp-image-file/near-by-img/' . $attraction->image_file) }}" alt="{{ $attraction->title }}">
                  </a>
               </div>
               @endif
               <div class="blog-content2 near-main-content">
                  <h4>
                     <a href="{{ route('near-by-attraction.details', $attraction->slug) }}">
                        {{ $attraction->title }}
                     </a>
                  </h4>
               </div>
            </div>
         </div>
         @endforeach
      </div>

   </div>
</section>
@endif
@endsection