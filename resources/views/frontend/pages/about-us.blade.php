@extends('frontend.layouts.master')
@section('title','Hotel Sankalp :: About us')
@section('description', 'Hotel Sankalp, Experience true tranquility and relaxation in Varanasi, known for its vibrant spirituality and rich cultural heritage.')
@section('keywords', 'Hotel, Hotel varanasi, Sankalp, Varanasi Hotel, Luxury Hotel in Varanasi, Hotel sankalp about us')

@section('main-content')
    <section class="breadcrumb-area d-flex align-items-center" style="background-image:url('{{asset('fronted/hotelsankalp-img/breadcrub/bread-1.jpg') }}')">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-12 col-lg-12">
                    <div class="breadcrumb-wrap text-center">
                        <div class="breadcrumb-title">
                            <h2>About</h2>    
                            <div class="breadcrumb-wrap">
                        
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{URL::to('/')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">About</li>
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
    
    <!-- about-area -->
<section class="about-area about-p pt-120 pb-120 p-relative fix">
   <div class="animations-02">
    <img src="{{asset('fronted/img/bg/an-img-02.png')}}" alt="contact-bg-an-02">
</div>
   <div class="container">
      <div class="row justify-content-center align-items-center">
         <div class="col-lg-6 col-md-12 col-sm-12">
            <div class="s-about-img p-relative  wow fadeInLeft animated" data-animation="fadeInLeft" data-delay=".4s">
               <img src="{{asset('fronted/img/features/about_img_02.png')}}" alt="img">   
               <div class="about-icon">
                  <img src="{{asset('fronted/img/features/about_img_03.png')}}" alt="img">   
               </div>
            </div>
         </div>
         <div class="col-lg-6 col-md-12 col-sm-12">
            <div class="about-content s-about-content  wow fadeInRight  animated pl-30" data-animation="fadeInRight" data-delay=".4s">
               <div class="about-title second-title pb-25">
                  <h5>About Us</h5>
                  <h2> Ensuring Safety and Comfort for Your Stay.</h2>
               </div>
               <p>Our hotel stands out as a top-rated haven in Varanasi, where your safety and comfort are our top priorities. Nestled in the heart of this ancient city, we offer a sanctuary amidst the hustle and bustle, ensuring a peaceful and secure stay for all our guests. Our commitment to excellence is reflected in our high ratings, which highlight our dedication to providing exceptional service and maintaining the highest standards of safety and hygiene.</p>
               <p>Experience true tranquility and relaxation in Varanasi, known for its vibrant spirituality and rich cultural heritage. Our hotel offers a serene retreat where you can unwind and rejuvenate, away from the chaos of everyday life. Whether you're exploring the city's temples and ghats or simply seeking a peaceful getaway, our top-rated establishment provides the perfect blend of comfort, convenience, and safety for a memorable stay in Varanasi.</p>
               <div class="about-content3 mt-30">
                  <div class="row justify-content-center align-items-center">
                     <!-- <div class="col-md-12">
                        <ul class="green mb-30">                                              
                                   <li> 24 Month / 24,000km Nationwide Warranty monotone</li>
                                   <li> Curabitur dapibus nisl a urna congue, in pharetra urna accumsan.</li>     
                                   <li> Customer Rewards Program and excellent technology</li>
                              </ul>
                        </div> -->
                     <!-- <div class="col-md-12">
                        <div class="signature">
                            <img src="img/features/signature.png" alt="img">     
                            <h3 class="mt-10">Vincent Smith</h3>
                        </div>
                        
                        </div> -->
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
@include('frontend.layouts.book-a-room')
<!-- newslater-area -->
<!--<section class="newslater-area p-relative pt-120 pb-120" style="background-color: #f7f5f1;">
    <div class="animations-01">
        <img src="{{asset('fronted/img/bg/an-img-07.png')}}" alt="contact-bg-an-05">
    </div>
    <div class="container">
      <div class="row justify-content-center align-items-center text-center">
         <div class="col-xl-9 col-lg-9">
            <div class="section-title center-align mb-40 text-center wow fadeInDown animated" data-animation="fadeInDown" data-delay=".4s">
               <h5>Newsletter</h5>
               <h2>
                  Get Best Offers On The Hotel
               </h2>
               <p>With the subscription, enjoy your favourite Hotels without having to think about it</p>
            </div>
            <form name="ajax-form" id="contact-form4" action="#" method="post" class="contact-form newslater">
               <div class="form-group">
                  <input class="form-control" id="email3" name="email" type="email" placeholder="Your Email Address" value="" required=""> 
                  <button type="submit" class="btn btn-custom" id="send2">Subscribe Now</button>
               </div>
            </form>
         </div>
      </div>
   </div>
</section>-->
<!-- newslater-aread-end -->
    
@endsection