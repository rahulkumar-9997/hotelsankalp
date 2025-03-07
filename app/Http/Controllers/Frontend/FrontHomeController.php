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

    public function ourRoom(){
        $data['hotel_room'] = HotelRoom::with('images')->orderBy('id', 'asc')->get();
	    return view('frontend.pages.our-room', ['data' => $data]);
    }

    public function ourFacilities(){
        $data['hotel_facilities'] = HotelFacilities::select('id', 'title' ,'slug', 'facilities_content', 'facilities_icon')->get();
	    return view('frontend.pages.facilities',  ['data' => $data]);
    }
    
    public function contactUs(){
	    return view('frontend.pages.contact-us');
    }
    
    public function homeEnquiryQuickSubmit(Request $request){
        $this->validate($request, [
            'check_in_date' => 'required|date',
            'check_out_date' => 'required|date',
            'no_of_rooms' => 'required|in:1,2,3,4,5,6,7,8,9,10+',
            'contact_person_name' => 'required',
            'phone_no' => 'required|digits:10',
            
        ]);
        try {
            $data = [
                'check_in_date' => date_create($request->input('check_in_date')),
                'check_out_date' => date_create($request->input('check_out_date')),
                'no_of_rooms' => $request->input('no_of_rooms'),
                'contact_person_name' => $request->input('contact_person_name'),
                'phone_no' => $request->input('phone_no'),
            ];
            
            Mail::to('sankalpbanaras@gmail.com') // Replace with your recipient email address
                ->send(new QuickEnquiryMail($data));
            Log::info('Home Quick Enquiry Form Email sent successfully to sankalpbanaras@gmail.com');
            return redirect()->back()->with('success', 'Your message has been sent successfully. Our team will contact you shortly!')->withFragment('#form-section');
        } catch (Exception $e) {
            Log::error('Error sending email: ' . $e->getMessage());
            return redirect()->back()->with('error', 'There was an error sending your message. Please try again later.')->withInput()->withFragment('#form-section');
        }
        
    }

    public function bookARooom(Request $request){
        $validator = Validator::make($request->all(), [
            'check_in_date' => 'required|date',
            'check_out_date' => 'required|date',
            'room_type' => 'required|in:Deluxe Double Room,Super Deluxe Double Room,Triple Bed Room,Family Quad Room',
            'no_of_room' => 'required|in:1,2,3,4,5,6,7,8,9,10+',
            'contact_person_name' => 'required',
            'phone_number' => 'required|digits:10',
            'email' => 'required|email',
        ]);
    
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput()->withFragment('bookaroom');
        }
    
        if (!NoCaptcha::verifyResponse($request->input('g-recaptcha-response'))) {
            return redirect()->back()
                ->with('error', 'reCAPTCHA verification failed, please try again!')
                ->withInput()
                ->withFragment('bookaroom');
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
            Log::info('Book a Room Enquiry Form Email sent successfully to sankalpbanaras@gmail.com');
            
            return redirect()->back()->with('success', 'Your message has been sent successfully. Our team will contact you shortly!')->withFragment('bookaroom');
        } catch (Exception $e) {
            Log::error('Error sending email: ' . $e->getMessage());
            return redirect()->back()->with('error', 'There was an error sending your request. Please try again later.')->withFragment('bookaroom');
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
            // Clear all caches (application, route, config, and view)
            Artisan::call('optimize:clear');
            return back()->with('success', 'All caches have been cleared successfully.');
        } catch (\Exception $e) {
            return back()->with('error', 'Failed to clear caches. Please try again.');
        }
    }
    
}
