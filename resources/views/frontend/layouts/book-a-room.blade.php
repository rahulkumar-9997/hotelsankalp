<section class="booking pt-50 pb-50 p-relative fix mb-50" id="bookaroom" style="background: #dac193;">
   <div class="animations-01">
      <img src="{{asset('fronted/img/bg/an-img-01.png')}}" alt="an-img-01">
   </div>
   <div class="container">
      <div class="row align-items-center">
         <div class="col-lg-6 col-md-6">
            <div class="contact-bg02 book-a-room">
               <div class="section-title center-align">
                  <h5>make appointment</h5>
                  <h2>
                     Book A Room
                  </h2>
               </div>
               <form action="{{route('book-a-room.store')}}" method="post" class="contact-form mt-30">
                  @csrf
                  <div class="row">
                     <div class="col-lg-6 col-md-6">
                        <div class="contact-field p-relative c-name">                                    
                           <label><i class="fal fa-badge-check"></i> Check In Date</label>
                           <input type="date" id="chackin" name="check_in_date" value="{{ old('check_in_date') }}">
                        </div>
                        @if($errors->has('check_in_date'))
                           <div class="text-danger">{{ $errors->first('check_in_date') }}</div>
                        @endif
                     </div>
                     <div class="col-lg-6 col-md-6">
                        <div class="contact-field p-relative c-subject">                                   
                           <label><i class="fal fa-times-octagon"></i> Check Out Date</label>
                           <input type="date" id="chackout" name="check_out_date" value="{{ old('check_out_date') }}">
                        </div>
                        @if($errors->has('check_out_date'))
                           <div class="text-danger">{{ $errors->first('check_out_date') }}</div>
                        @endif
                     </div>
                     <div class="col-lg-6 col-md-6">
                        <div class="contact-field p-relative c-subject">                                   
                           <label><i class="fal fa-times-octagon"></i> Room Type</label>
                           <select name="room_type">
                              <option value="sports-massage">Select room Type</option>
                              <option value="Deluxe Double Room" {{ old('room_type') == 'Super Deluxe Double Room' ? 'selected' : '' }}>Deluxe Double Room</option>
                              <option value="Super Deluxe Double Room" {{ old('room_type') == 'Super Deluxe Double Room' ? 'selected' : '' }}>Super Deluxe Double Room</option>
                              <option value="Triple Bed Room" {{ old('room_type') == 'Triple Bed Room' ? 'selected' : '' }}>Triple Bed Room</option>
                              <option value="Family Quad Room" {{ old('room_type') == 'Family Quad Room' ? 'selected' : '' }}>Family Quad Room</option>
                              
                           </select>
                           @if($errors->has('room_type'))
                              <div class="text-danger">{{ $errors->first('room_type') }}</div>
                           @endif
                        </div>
                     </div>
                     
                     <div class="col-lg-6 col-md-6">
                        <div class="contact-field p-relative c-option">
                           <label><i class="fal fa-concierge-bell"></i>No of room</label>
                           <select name="no_of_room">
                              <option value="sports-massage">Room</option>
                              <option value="1">1</option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                              <option value="4">4</option>
                              <option value="5">5</option>
                              <option value="6">6</option>
                              <option value="7">7</option>
                              <option value="8">8</option>
                              <option value="9">9</option>
                              <option value="10+">10+</option>
                           </select>
                           @if($errors->has('no_of_room'))
                              <div class="text-danger">{{ $errors->first('no_of_room') }}</div>
                           @endif
                        </div>
                     </div>
                     <div class="col-lg-6 col-md-6">
                        <div class="contact-field p-relative c-option">
                           <label><i class="fal fa-users"></i> Contact Person Name</label>
                           <input type="text" id="firstn" name="contact_person_name"  placeholder="Contact person name" value="{{ old('contact_person_name') }}">
                           @if($errors->has('contact_person_name'))
                              <div class="text-danger">{{ $errors->first('contact_person_name') }}</div>
                           @endif
                        </div>
                     </div>
                     <div class="col-lg-6 col-md-6">
                        <div class="contact-field p-relative c-option">
                           <label><i class="fal fa-mobile"></i>Phone No.</label>
                           <input type="text" maxlength="10"  name="phone_number"  placeholder="Phone/Mobile No." pattern="^[0-9]{10}$" 
                           inputmode="numeric" 
                           title="Please enter a 10-digit phone number"
                           oninput="this.value = this.value.replace(/[^0-9]/g, '').slice(0, 10)" value="{{ old('phone_number') }}">
                           @if($errors->has('phone_number'))
                              <div class="text-danger">{{ $errors->first('phone_number') }}</div>
                           @endif
                        </div>
                     </div>
                     <div class="col-lg-6 col-md-6">
                        <div class="contact-field p-relative c-option">
                           <label><i class="fal fa-mailbox"></i>Email Id.</label>
                           <input type="email" name="email"  placeholder="Email id" value="{{ old('email') }}">
                           @if($errors->has('email'))
                              <div class="text-danger">{{ $errors->first('email') }}</div>
                           @endif
                        </div>
                     </div>
                     <div class="col-lg-6 col-md-6">
                        <div class="contact-field p-relative c-option" style="margin-top: 20px;">
                           {!! NoCaptcha::renderJs() !!}
                           {!! NoCaptcha::display() !!}
                        </div>
                     </div>
                     <div class="col-lg-12">
                        <div class="slider-btn mt-15">                                          
                           <button class="btn ss-btn" data-animation="fadeInRight" data-delay=".8s"><span>Submit</span></button>				
                        </div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
         <div class="col-lg-6 col-md-6  d-flex align-items-center">
            <div class="booking-img">
               <img src="{{asset('fronted/hotelsankalp-img/new-12-24/1000x563.jpg')}}" alt="img">
            </div>
         </div>
      </div>
   </div>
</section>