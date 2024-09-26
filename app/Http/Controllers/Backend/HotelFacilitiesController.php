<?php
namespace App\Http\Controllers\Backend;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\HotelFacilities;

class HotelFacilitiesController extends Controller
{
    public function index(){
        //DB::enableQueryLog();
        $data['facilities_list'] = HotelFacilities::orderBy('id','DESC')->get(); 
        return view('backend.hotel-facilities.index', compact('data'));
    }

    public function facilitiesShowForm (){        
        return view('backend.hotel-facilities.add');
    }

    public function facilitiesAddFormSubmit(Request $request) {
        $this->validate($request, [
            'facilities_name' => 'required',
            'facilities_icon' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'facilities_content' => 'required',
            
        ]);
        $input['title'] = $request->input('facilities_name');
        $input['facilities_content'] = $request->input('facilities_content');

        if ($request->hasFile('facilities_icon')){
            $image = $request->file('facilities_icon');
            date_default_timezone_set('Asia/Kolkata');
            $filenameWithExt = $image->getClientOriginalName();
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            $extension = $image->getClientOriginalExtension();
            $time = time();
            $date = date("h-i-s");
            $date_time = date("d-m-Y", $time) . '-' . $date;
            $image_file_name = 'facilities-icon-' . $date_time . '.' . $extension;
            $destinationPath = public_path('hotel-sankalp-image-file/facilities-icon');
            $image->move($destinationPath, $image_file_name);
            $input['facilities_icon'] = $image_file_name;
            
        }
        $facilities_add_input = HotelFacilities::create($input);
        if ($facilities_add_input){
            return redirect('hotel-facilities')->with('success','Hotel Facilities added successfully');
        }else{
            return redirect()->back()->with('error','Somthings went wrong please try again !.');
        }
        return redirect()->back()->with('error','Somthings went wrong please try again !');
    }

    public function showEditForm($id){        
        $facilities_edit = HotelFacilities::find($id);
        return view('backend.hotel-facilities.edit' , compact('facilities_edit'));
    }

    public function editFormSubmit(Request $request) {
        $this->validate($request, [
            'facilities_name' => 'required',
            'facilities_content' => 'required',
            
        ]);
        $input['title'] = $request->input('facilities_name');
        $input['facilities_content'] = $request->input('facilities_content');
        $facilities_row = HotelFacilities::find($request->facilities_id);
        if ($request->hasFile('facilities_icon')){
            $image = $request->file('facilities_icon');
            date_default_timezone_set('Asia/Kolkata');
            $filenameWithExt = $image->getClientOriginalName();
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            $extension = $image->getClientOriginalExtension();
            $time = time();
            $date = date("h-i-s");
            $date_time = date("d-m-Y", $time) . '-' . $date;
            $image_file_name = 'facilities-icon-' . $date_time . '.' . $extension;
            $destinationPath = public_path('hotel-sankalp-image-file/facilities-icon/');
            $image->move($destinationPath, $image_file_name);
            $input['facilities_icon'] = $image_file_name;
            /**unlink banner */
            $facilities_old_file = $destinationPath.$facilities_row->facilities_icon;
            if (file_exists($facilities_old_file)) {
                unlink($facilities_old_file);
            }
            
        }
        $banner_row_update = $facilities_row->update($input);
        if($banner_row_update ){
            return redirect('hotel-facilities')->with('success','Hotel Facilities updated successfully');
        }else{
            return redirect()->back()->with('error','Somthings went wrong please try again !');
        }
    }

    public function deleteFacilities($id){
        $facilities_row = HotelFacilities::find($id);
        /*Unlink image*/
        $destinationPath = public_path('hotel-sankalp-image-file/facilities-icon/');
        $banner_old_file = $destinationPath.$facilities_row->facilities_icon;
        if (file_exists($banner_old_file)) {
            unlink($banner_old_file);
        }
        $facilities_row->delete();
        return redirect('facilities')->with('success','Hotel Facilities deleted successfully');
    }
}
