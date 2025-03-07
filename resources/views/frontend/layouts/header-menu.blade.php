
	<header class="header-area header-three">
   <!-- <div class="header-top second-header d-none d-md-block">
      <div class="container">
          <div class="row align-items-center">      
              <div class="col-lg-10 col-md-10 d-none d-lg-block">
                   <div class="header-cta">
                     <ul>                                   
                          <li>
                             <i class="far fa-clock"></i>
                              <span>Mon - Fri: 9:00 - 19:00/ Closed on Weekends</span>
                          </li>
                          <li>
                             <i class="far fa-mobile"></i>
                              <strong>+91 705 210-1786</strong>
                          </li>
                      </ul>
                  </div>
              </div>
          
              <div class="col-lg-2 col-md-2 d-none d-lg-block text-right">
                   <div class="header-social">
                      <span>
                          <a href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                          <a href="#" title="LinkedIn"><i class="fab fa-instagram"></i></a>               
                          <a href="#" title="Twitter"><i class="fab fa-twitter"></i></a>
                          <a href="#" title="Twitter"><i class="fab fa-youtube"></i></a>
                         </span>                    
                          /social media icon redux                               
                  </div>
              </div>
          </div>
      </div>
      </div>		 -->
   <div id="header-sticky" class="menu-area">
      <div class="container">
         <div class="second-menu">
            <div class="row align-items-center">
               <div class="col-xl-3 col-lg-3">
                  <div class="logo">
                     <a href="{{URL::to('/')}}"><img src="{{asset('fronted/hotelsankalp-img/logo/logo-new.png')}}" alt="logo"></a>
                  </div>
               </div>
               <div class="col-xl-9 col-lg-9">
                  <div class="main-menu text-end">
                     <nav id="mobile-menu">
                        <ul>
                           <li class="has-sub">
                              <a href="{{URL::to('/')}}">Home</a>
                              <!-- <ul>													
                                 <li><a href="index.html">Home Page 01</a></li>
                                 <li><a href="index-2.html">Home Page 02</a></li>													
                                 <li><a href="index-3.html">Home Page Side Menu</a></li>													
                                 <li><a href="index-4.html">Home Page Full Menu</a></li>													
                                 													
                                 </ul> -->
                           </li>
                           <li class="has-sub">
                              <a href="{{route('about-us')}}">About</a>
                           </li>
                           <li class="has-sub">
                              <a href="{{ route('restaurant-and-banquet') }}">
                                 Restaurant & Banquet
                              </a>
                           </li>
                           <li class="has-sub">
                              <a href="{{route('our-room')}}">our rooms</a>
                              <!-- <ul>													
                                 <li> <a href="room.html">Our Rooms</a></li>
                                                                        <li> <a href="single-rooms.html">Rooms Details</a></li>
                                 </ul> -->
                           </li>
                           <li class="has-sub">
                              <a href="{{route('facilities')}}">Facilities</a>
                           </li>
                        <!-- <li class="has-sub"><a href="#">Pages</a>
                              <ul>
                                                                     
                                 <li><a href="pricing.html">Pricing</a></li>
                                 <li><a href="shop.html">Shop</a></li>
                              	<li><a href="shop-details.html">Shop Details</a>
                              </ul>
                              </li> -->
                           <!-- <li class="has-sub"> 
                              <a href="blog.html">Blog</a>
                              <ul>
                                  <li><a href="blog.html">Blog</a></li>
                                  <li><a href="blog-details.html">Blog Details</a></li>
                              </ul>
                              </li> -->
                           <li><a href="{{route('contact-us')}}">Contact Us</a></li>
                        </ul>
                     </nav>
                  </div>
               </div>
               <!-- <div class="col-xl-2 col-lg-2 d-none d-lg-block">
                  <a href="/" class="top-btn mt-10 mb-10">reservation </a>
                  </div> -->
               <div class="col-12">
                  <div class="mobile-menu"></div>
               </div>
            </div>
         </div>
      </div>
   </div>
</header>