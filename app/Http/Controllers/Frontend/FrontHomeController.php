<?php
namespace App\Http\Controllers\Frontend;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Log;
use App\Mail\QuickEnquiryMail; 
use App\Mail\BookAroomMail; 
use App\Mail\ContactFormMail; 
use Exception;
use App\Models\Banner;
use App\Models\HotelFacilities;
use App\Models\HotelRoom;
use App\Models\RoomImage;
use NoCaptcha;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Artisan;
class FrontHomeController extends Controller
{
    public function home(){
        $data['banner'] = Banner::orderBy('id','DESC')->get(); 
        $data['hotel_facilities'] = HotelFacilities::select('id', 'title' ,'slug', 'facilities_content', 'facilities_icon')->inRandomOrder()->limit(3)->get();
        //$data['hotel_room'] = HotelRoom::with('images')->orderBy('id', 'desc')->limit(4)->get();
        $data['hotel_room'] = HotelRoom::with('images')
            ->orderBy('id', 'desc')
            ->limit(4)
            ->get()
            ->map(function ($room) {
                // Pick a random image from the images relationship if images exist
                $room->random_image = $room->images->isNotEmpty() ? $room->images->random() : null;
                return $room;
            });
        return view('frontend.index', ['data' => $data]);
    }

    public function aboutUs(){
	    return view('frontend.pages.about-us');
    }

    public function banquetAndCobferenceHall() {
        return view('frontend.pages.banquet-and-conference-hall');
    }

    public function restaurant() {
        return view('frontend.pages.restaurant');
    }

    public function ourRoom(){
        $data['hotel_room'] = HotelRoom::with('images')->orderBy('id', 'asc')->get();
	    return view('frontend.pages.our-room', ['data' => $data]);
    }

    public function ourRoomDetails($slug){
        $data['room_details'] = HotelRoom::with('images')
        ->where('slug', $slug)
        ->firstOrFail();
        //return response()->json($data['room_details']);
        return view('frontend.pages.our-room-details', compact('data'));
    }

    public function ourFacilities(){
        $data['hotel_facilities'] = HotelFacilities::select('id', 'title' ,'slug', 'facilities_content', 'facilities_icon')->get();
	    return view('frontend.pages.facilities',  ['data' => $data]);
    }
    
    public function contactUs(){
	    return view('frontend.pages.contact-us');
    }
    
    public function homeEnquiryQuickSubmit(Request $request){
        if (!empty($request->input('extra_field'))) {
            Log::warning('Spam detected via honeypot field.');
            return redirect()->back()->with('error', 'Suspicious activity detected.')->withInput()->withFragment('#form-section');
        }
        
        $this->validate($request, [
            'check_in_date' => 'required|date',
            'check_out_date' => 'required|date',
            'no_of_rooms' => 'required|in:1,2,3,4,5,6,7,8,9,10+',
            'contact_person_name' => 'required',
            'phone_no' => 'required|digits:10',
            'email' => 'required|email',
            
        ]);
        try {
            $data = [
                'check_in_date' => date_create($request->input('check_in_date')),
                'check_out_date' => date_create($request->input('check_out_date')),
                'no_of_rooms' => $request->input('no_of_rooms'),
                'contact_person_name' => $request->input('contact_person_name'),
                'phone_no' => $request->input('phone_no'),
                'email' => $request->input('email'),
            ];
            
            Mail::to('sankalpbanaras@gmail.com')->send(new QuickEnquiryMail($data));
            Log::info('Home Quick Enquiry Form Email sent successfully to sankalpbanaras@gmail.com');
            return redirect()->back()->with('success', 'Your message has been sent successfully. Our team will contact you shortly!')->withFragment('#form-section');
        } catch (Exception $e) {
            Log::error('Error sending email: ' . $e->getMessage());
            return redirect()->back()->with('error', 'There was an error sending your message. Please try again later.')->withInput()->withFragment('#form-section');
        }
        
    }

    public function bookARooom(Request $request)
    {
        if (!empty($request->input('extra_field'))) {
            Log::warning('Honeypot triggered: possible bot submission.');
            return response()->json([
                'status' => 'error',
                'message' => 'Invalid request detected.'
            ], 422);
        }
    
        $validator = Validator::make($request->all(), [
            'check_in_date' => 'required|date',
            'check_out_date' => 'required|date|after_or_equal:check_in_date',
            'room_type' => 'required',
            'no_of_room' => 'required|in:1,2,3,4,5,6,7,8,9,10+',
            'contact_person_name' => 'required',
            'phone_number' => 'required|digits:10',
            'email' => 'nullable|email',
        ]);
        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors()
            ], 422);
        }

        try {
            $data = [
                'check_in_date' => date_create($request->input('check_in_date')),
                'check_out_date' => date_create($request->input('check_out_date')),
                'room_type' => $request->input('room_type'),
                'no_of_room' => $request->input('no_of_room'),
                'contact_person_name' => $request->input('contact_person_name'),
                'phone_number' => $request->input('phone_number'),
                'email' => $request->input('email'),
            ];
            Mail::to('sankalpbanaras@gmail.com')->send(new BookAroomMail($data));
            Log::info('Book a Room Enquiry Form Email sent successfully.');

            return response()->json([
                'status' => 'success',
                'message' => 'Your booking request has been sent successfully. Our team will contact you shortly!'
            ]);
        } catch (Exception $e) {
            Log::error('Error sending Book A Room email: ' . $e->getMessage());
            return response()->json([
                'status' => 'error',
                'message' => 'Something went wrong while sending your request. Please try again later.'
            ], 500);
        }
    }
    
    public function contactForm(Request $request){
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|digits:10',
                        
        ]);
        if (!NoCaptcha::verifyResponse($request->input('g-recaptcha-response'))) {
            Log::info('Session Data:', session()->all());
            return redirect()->back()->with('error', 'reCAPTCHA verification failed, please try again.!')->withInput();
        }
        try {
            $data = [
                'name' => $request->input('name'),
                'email' =>$request->input('email'),
                'phone' => $request->input('phone'),
                'message' => $request->input('message'),
            ];
            
            Mail::to('sankalpbanaras@gmail.com')->send(new ContactFormMail($data));
			Mail::to('akshat.gd@gmail.com')->send(new ContactFormMail($data));
            Log::info('Contact Us Form Enquiry Email sent successfully to sankalpbanaras@gmail.com');
        } catch (Exception $e) {
            Log::error('Error sending email: ' . $e->getMessage());
        }
        return redirect()->back()->with('success', 'Your message has been sent successfully, Our team contact you shortly.!');
    }
    

    public function clearCache(){
        try {
            Artisan::call('optimize:clear');
            return back()->with('success', 'All caches have been cleared successfully.');
        } catch (\Exception $e) {
            return back()->with('error', 'Failed to clear caches. Please try again.');
        }
    }

    public function bookAtableModalForm(Request $request){
        
        $form = '
        <form method="POST" action="' . route('book.a.table.submit') . '" accept-charset="UTF-8" enctype="multipart/form-data" id="bookATableForm">
            ' . csrf_field() . '
            <div class="row">
                <div class="col-md-6">
                    <div class="mb-2">
                        <label for="name" class="form-label">Name *</label>
                        <input type="text" id="name" name="name" class="form-control">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-2">
                        <label for="date_time" class="form-label">Date/Time *</label>
                        <input type="date" id="date_time" name="date_time" class="form-control">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-2">
                        <label for="no_of_guest" class="form-label">No. of Guest *</label>
                        <select class="form-select" name="no_of_guest" id="no_of_guest">
                           <option value=""> Select No  Of Guest </option>
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
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-2">
                        <label for="email" class="form-label">Email *</label>
                        <input type="email" id="email" name="email" class="form-control">
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="mb-2">
                        <label for="mobile_number" class="form-label">Mobile No. *</label>
                        <input type="text" maxlength="10" id="mobile_number" name="mobile_number" class="form-control">
                    </div>
                </div>
                
                
                <div class="modal-footer pb-0">
                    <!--<button type="button" class="btn btn-animation btn-md fw-bold" data-bs-dismiss="modal">Close</button>-->
                    <button style="color:#ffffff;" type="submit" class="btn btn-2-animation btn-md fw-bold">Submit</button>
                </div>
            </div>
        </form>
        ';
        return response()->json([
            'message' => 'Form created successfully',
            'form' => $form,
        ]);
    }

    public function bookAtableModalFormSubmit(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'date_time' => 'required|date|after_or_equal:today',
            'no_of_guest' => 'required|integer|min:1|max:20',
            'email' => 'required|email:rfc,dns|max:255', 
            'mobile_number' => ['required', 'string', 'min:10', 'max:15', 'regex:/^[0-9+\- ]+$/'],
        ], [
            'name.required' => 'Please enter your name',
            'date_time.required' => 'Please select date and time',
            'date_time.after_or_equal' => 'Booking date must be today or a future date',
            'no_of_guest.required' => 'Please select number of guests',
            'no_of_guest.integer' => 'Number of guests must be a valid number',
            'no_of_guest.min' => 'Minimum 1 guest required',
            'no_of_guest.max' => 'Maximum 20 guests allowed',
            'email.required' => 'Email address is required',
            'email.email' => 'Please enter a valid email address',
            'mobile_number.required' => 'Mobile number is required',
            'mobile_number.min' => 'Mobile number must be at least 10 digits',
            'mobile_number.max' => 'Mobile number cannot exceed 15 digits',
            'mobile_number.regex' => 'Please enter a valid mobile number (only numbers, +, - or spaces allowed)',
        ]);
    
        if ($validator->fails()) {
            return response()->json([
                'status' => 'error',
                'errors' => $validator->errors(),
            ], 422);
        }
    
        try {
            $formattedMobile = preg_replace('/[^0-9]/', '', $request->mobile_number);
            $bookingData = [
                'name' => $request->name,
                'email' => $request->email,
                'mobile_number' => $formattedMobile,
                'date_time' => $request->date_time,
                'no_of_guest' => $request->no_of_guest,
            ];
            
            /*Send to customer*/
            Mail::send('frontend.mail.book-a-table', $bookingData, function($message) use ($bookingData) {
                $message->to($bookingData['email'])
                        ->subject('Table Booking Confirmation');
            });
    
            /*Send to admin*/
            Mail::send('frontend.mail.book-a-table', $bookingData, function($message) use ($bookingData) {
                $message->to('sankalpbanaras@gmail.com')
                        ->subject('New Table Booking - ' . $bookingData['name']);
            });
    
            return response()->json([
                'status' => 'success',
                'message' => 'Booking a table submitted successfully! Our team will contact you shortly.',
            ], 200, [], JSON_UNESCAPED_SLASHES);
    
        } catch (\Exception $e) {
            Log::error('Booking submission error: ' . $e->getMessage());
            return response()->json([
                'status' => 'error',
                'message' => 'An error occurred while processing your booking. Please try again.',
            ], 500);
        }
    }
    
}
