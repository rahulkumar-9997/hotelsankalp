<?php
namespace App\Http\Controllers\Backend;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Models\Banner;
use App\Models\HotelFacilities;
use App\Models\HotelRoom;
use Carbon\Carbon;
use App\Models\Visit;
use Image;
use DB;
class DashboardController extends Controller
{
    public function index(){
        $data['banner'] = Banner::count();
        $data['hotel-facilities'] = HotelFacilities::count();
        $data['hotel-room'] = HotelRoom::count();

        $visitorCounts = Visit::selectRaw("DATE_FORMAT(visited_at, '%Y-%m-%d') as day, COUNT(*) as total_visits")
        ->where('visited_at', '>=', Carbon::now()->subDays(6)->startOfDay())  // Fetch for the last 7 days
        ->groupBy('day')
        ->orderBy('day')
        ->get()
        ->pluck('total_visits', 'day')
        ->toArray(); 
        $chart_data = ''; 
        foreach ($visitorCounts as $key => $value) {
            $date_formate = date('d-m-Y', strtotime($key));
            $chart_data .= "{ visit_date:'".$date_formate."', totalVisitor:".$value."},";
        }
        return view('backend.dashboard.index', ['data' => $data, 'chart_data' => $chart_data]);
    }

    public function showProfileUpdateForm(){
        $user = Auth::user();
        return view('backend.profile.index' , compact('user'));
    }

    public function updateProfile(Request $request){
        $user_id = Auth::user()->id;
        
        // $this->validate($request, [
        //     'profile_name' => ['nullable', 'required'],
        //     'mobile_number' =>  ['nullable', 'required|numeric|digits:10'],
        //     //'profile_photo' =>  ['nullable', 'required'],
        //     'update_password' =>  ['nullable', 'required|digits:8'],
        // ]);

        $input['name'] = $request->input('profile_name');
        $input['phone_number'] = $request->input('mobile_number');
        $input['email'] = $request->input('profile_email');
       
        $user_row = User::find($user_id);
        
        if ($request->hasFile('profile_photo')){
            $image = $request->file('profile_photo');
            $filenameWithExt = $image->getClientOriginalName();  
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            $extension = $image->getClientOriginalExtension();
            $image_file_name = $filename.'_'.time().'.'.$extension;
            
           
            $destination_path_main_img_ = public_path('hotel-sankalp-image-file/profile-img/');
            /*Unlink image*/
            // $file_old_thumb = $destination_path_thumb.$user_row->profile_img;
            if(!empty($user_row->profile_img)){
                $file_old_main = $destination_path_main_img_.$user_row->profile_img;
                
                if (file_exists($file_old_main)) {
                    unlink($file_old_main);
                }
            }
            $destinationPath = public_path('hotel-sankalp-image-file/profile-img/');
            $image->move($destinationPath, $image_file_name);
            $input['profile_img'] = $image_file_name;
        }
        $image_upload = $user_row->update($input);
        if($request->input('current_password') && $request->input('new_password')){
            $auth = Auth::user();
            if (!Hash::check($request->get('current_password'), $auth->password)) 
            {
                return back()->with('error', "Current Password is Invalid");
            }
                        
            if (strcmp($request->get('current_password'), $request->new_password) == 0) 
            {
                return redirect()->back()->with("error", "New Password cannot be same as your current password.");
            }
            $user =  User::find($auth->id);
            $user->password =  Hash::make($request->new_password);
            $user->save();
            return back()->with('success', "Password Changed Successfully");
        }
 

        if ($image_upload){
            return redirect('manage-profile')->with('success','Profile updated successfully');
        }else{
            return redirect()->back()->with('error','Somthings went wrong please try again !.');
        }
    }
}
