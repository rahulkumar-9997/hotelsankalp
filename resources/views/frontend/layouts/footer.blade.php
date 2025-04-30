<footer class="footer-bg footer-p">
            <div class="footer-top  pt-90 pb-40" style="background-color: #644222; background-image: url('{{asset('fronted/img/bg/footer-bg.png') }}');">
                   <div class="container">
                       <div class="row justify-content-between">
                           
                             
                           <div class="col-xl-4 col-lg-4 col-sm-6">
                               <div class="footer-widget mb-30">
                                   <div class="f-widget-title mb-30">
                                       <a href="{{URL::to('/')}}">
										<img src="{{asset('fronted/hotelsankalp-img/logo/logo-new.png')}}" alt="logo"></a>
                                   </div>
                                   <p>Experience top-rated tranquility in the heart of Varanasi, where your safety and comfort are our priority.</p>
                                   <div class="footer-social">                                    
                                       <a target="_blank" href="https://www.facebook.com/share/1YSrtZ6wwy/?mibextid=wwXIfr"><i class="fab fa-facebook-f"></i></a>
                                       <!-- <a href="#"><i class="fab fa-twitter"></i></a> -->
                                       <a target="_blank" href="https://www.instagram.com/hotelsankalpbanaras?igsh=MTF1Zmo4enhycWl1aA=="><i class="fab fa-instagram"></i></a>
                                   </div>  
                               </div>
                           </div>
                           <div class="col-xl-2 col-lg-2 col-sm-6">
                               <div class="footer-widget mb-30">
                                   <div class="f-widget-title">
                                       <h2>Our Links</h2>
                                   </div>
                                   <div class="footer-link">
                                       <ul> 
                                           <li><a href="{{url('about-us') }}"> About Us</a></li>
                                           <li><a href="{{url('restaurant-and-banquet') }}">Restaurant & Banquet
                                           </a></li>
                                           <li><a href="{{url('our-room') }}">Our Rooms </a></li>
                                           <li><a href="{{url('facilities') }}">Facilities </a></li>
                                           <li><a href="{{url('contact-us') }}"> Contact Us</a></li>
                                           
                                       </ul>
                                   </div>
                               </div>
                           </div>
                           <div class="col-xl-2 col-lg-2 col-sm-6">
                               <div class="footer-widget mb-30">
                                   <div class="f-widget-title">
                                       <h2>Social Links</h2>
                                   </div>
                                   <div class="footer-link">
                                       <ul>
                                           <li><a href="#">Facebook</a></li>
                                           <li><a href="#">Instagram</a></li>
                                           <li><a href="#">Youtube</a></li>
                                           <li><a href="#">Linkedin</a></li>
                                       </ul>
                                   </div>
                               </div>
                           </div>  
                           <div class="col-xl-4 col-lg-4 col-sm-6">
                               <div class="footer-widget mb-30">
                                   <div class="f-widget-title">
                                     <h2>Contact US</h2>
                                   </div>
                                   
                                    <div class="f-contact">
                                       <ul>
                                       <li>
                                           <i class="icon fal fa-phone"></i>
                                           <span>0542-2975050
										   <br><a href="tel:+919005050196">+91-9005050196</a>
										   </span>
                                       </li>
									   <li>
                                            <i class="icon fab fa-whatsapp"></i>
                                            <span style="margin-top: 15px; display: block;">
                                                <a href="tel:+919005050197">+91-9005050197</a>
                                            </span>
                                       </li>
									   
                                      <li>
                                       <i class="icon fal fa-envelope"></i>
                                           <span>
                                            <a href="mailto:sankalpbanaras@gmail.com">sankalpbanaras@gmail.com</a>
                                            <br>
                                            <a href="mailto:info@sankalpbanaras.com">info@sankalpbanaras.com</a>
											
                                          </span>
                                       </li>
                                       <li>
                                           <i class="icon fal fa-map-marker-check"></i>
                                           <span>B-38/8-3, Raghunath Nagar Colony,
                                           Mahmoorganj, Varanasi-221010	(U.P.)</span>
                                       </li>
                                       
                                   </ul>
                                       
                                       </div>
                               </div>
                           </div>
                          
                       </div>
                   </div>
               </div>
               <div class="copyright-wrap">
                   <div class="container">
                       <div class="row align-items-center">
                           <div class="col-lg-12 col-md-12"> 
                                <div class="text-center">                       
                                <p class="mb-0">Copyright <?php echo date("Y"); ?> Hotelsankalp All Rights Reserved</p>
                                
                                </div> 
                           </div>
                           
                           
                       </div>
                   </div>
               </div>
           </footer>
           @if(session()->has('success'))

           <div class="toast active bg-success" style="opacity: 1;" id="toast">
                <div class="toast-content">
                    <i class="fas fa-solid fa-check check"></i>
                    <div class="message">
                    <span class="text text-2"> {{ session()->get('success') }}</span>
                    </div>
                </div>
            </div>
            @endif



           @if(session()->has('error'))
           <div class="toast active bg-danger" style="opacity: 1;" id="toast">
                <div class="toast-content">
                    <i class="fas fa-solid fa-check check"></i>
                    <div class="message">
                    <span class="text text-2"> {{ session()->get('error') }}</span>
                    </div>
                </div>
            </div>
            @endif
            