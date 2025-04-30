@extends('frontend.layouts.master')
@section('title','Hotel Sankalp - Contact Us')
@section('description', 'Hotel Sankalp Varansi')
@section('keywords', 'Hotel, Hotel varanasi, Sankalp, Varanasi Hotel, Luxury Hotel in Varanasi, Hotel sankalp contact us')

@section('main-content')
    <section class="breadcrumb-area d-flex align-items-center" style="background-image:url('{{asset('fronted/hotelsankalp-img/new-12-24/bread/1.jpg') }}')">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-12 col-lg-12">
                    <div class="breadcrumb-wrap text-center">
                        <div class="breadcrumb-title">
                            <h2>Contact Us</h2>    
                            <div class="breadcrumb-wrap">
                        
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{URL::to('/')}}">Home</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Contact Us</li>
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
    <section id="contact" class="contact-area after-none contact-bg pt-50 pb-20 p-relative fix">
        <div class="container">
            <div class="row justify-content-center align-items-center">
				<div class="col-lg-12">
					<h2 class="text-center mb-10">Hotel Sankalp Banaras</h2>
				</div>
                <div class="col-lg-4 order-1 d-flex justify-content-between">
                    <div class="contact-info">
                        <div class="single-cta pb-30 mb-30 wow fadeInUp animated" data-animation="fadeInDown animated" data-delay=".2s">
                            <div class="f-cta-icon">
                                <i class="far fa-map"></i>
                            </div>
                            <div class="contact-div">
                                <h5>Hotel Address</h5>
                                <h6>Hotel Sankalp Banaras</h6>
                                <p>B-38/8-3, Raghunath Nagar<br> Colony,
                                    Mahmoorganj, Varanasi-221010
                                </p>
                            </div>
                        </div>
                        <div class="single-cta pb-30 mb-30 wow fadeInUp animated" data-animation="fadeInDown animated" data-delay=".2s">
                            <div class="f-cta-icon">
                                <i class="far fa-phone"></i>
                            </div>
                            <div class="contact-div">
                                <h5>Mobile </h5>
                                <p>
                                    <a href="tel:0542-2975050">0542-2975050</a>
                                    <br> 
                                    <a href="tel:+919005050196">+91-9005050196</a>
                                </p>
                            </div>
                        </div>
                        <div class="single-cta pb-30 mb-30 wow fadeInUp animated" data-animation="fadeInDown animated" data-delay=".2s">
                            <div class="f-cta-icon">
                                <i class="fab fa-whatsapp"></i>
                            </div>
                            <div class="contact-div">
                                <h5>Whatsapp </h5>
                                <p>
                                    <a href="tel:+919005050197">+91-9005050197</a>
                                </p>
                            </div>
                        </div>
                        <div class="single-cta wow fadeInUp animated" data-animation="fadeInDown animated" data-delay=".2s">
                            <div class="f-cta-icon">
                                <i class="far fa-envelope-open"></i>
                            </div>
                            <div class="contact-div">
                                <h5>Mail Us</h5>
                                <p>
                                    <a href="mailto:sankalpbanaras@gmail.com">sankalpbanaras@gmail.com</a>
                                    <br>
                                    <a href="mailto:info@sankalpbanaras.com">info@sankalpbanaras.com</a>
                                    
                                    <!-- <a href="#">info@gmail.com</a> -->
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 order-2">
                    <div class="contact-bg02">
                    
                    <form action="{{route('contact-form.store')}}" method="post" class="contact-form mt-0 fadeInDown animated" data-animation="fadeInDown" data-delay=".4s">
                        @csrf
                        <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="contact-field p-relative c-name">                                    
                                <input type="text" name="name" placeholder="Name" value="{{ old('name') }}">
                                @if($errors->has('name'))
                                    <div class="text-danger">{{ $errors->first('name') }}</div>
                                @endif
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="contact-field p-relative c-subject">                                   
                                <input type="email" name="email" placeholder="Eamil" value="{{ old('email') }}">
                                @if($errors->has('email'))
                                    <div class="text-danger">{{ $errors->first('email') }}</div>
                                @endif
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12">
                                <div class="contact-field p-relative c-subject">                                   
                                <input type="text" name="phone" placeholder="Phone No." maxlength="10" 
                                pattern="^[0-9]{10}$" 
                                inputmode="numeric" 
                                title="Please enter a 10-digit phone number"
                                oninput="this.value = this.value.replace(/[^0-9]/g, '').slice(0, 10)" value="{{ old('phone') }}">
                                @if($errors->has('phone'))
                                    <div class="text-danger">{{ $errors->first('phone') }}</div>
                                @endif
                                </div>
                            </div>
                            
                            <div class="col-lg-12">
                                <div class="contact-field p-relative c-message">                                  
                                    <textarea name="message" id="message" cols="30" rows="10" placeholder="Write comments">{{old('message') }}</textarea>
                                </div>
                                <div class="contact-field p-relative c-message">                                  
                                    {!! NoCaptcha::renderJs() !!}
                                    {!! NoCaptcha::display() !!}
                                </div>
                                <div class="slider-btn" style="margin-top: 20px;">                                          
                                    <button class="btn ss-btn" data-animation="fadeInRight" data-delay=".8s"><span>Submit Now</span></button>				
                                </div>
                            </div>
                        </div>
                    </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="map-section">
            <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3606.974654761799!2d82.9813056!3d25.3050556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMjXCsDE4JzE4LjIiTiA4MsKwNTgnNTIuNyJF!5e0!3m2!1sen!2sin!4v1725956919233!5m2!1sen!2sin" height="400" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </section>
    
@endsection