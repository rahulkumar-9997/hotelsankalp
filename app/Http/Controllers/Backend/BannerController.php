<?php
namespace App\Http\Controllers\Backend;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Banner;
use Intervention\Image\Facades\Image;
class BannerController extends Controller
{
    public function index(){
        //DB::enableQueryLog();
        $data['banner_list'] = Banner::orderBy('id','DESC')->get(); 
        return view('backend.banner.index', compact('data'));
    }

    public function addForm(){        
        return view('backend.banner.add');
    }

    public function addFormSubmit(Request $request){ 
        /**
         * https://stackoverflow.com/questions/66241341/how-to-resize-image-before-upload-in-laravel
         */
        $this->validate($request, [
            'banner_title' => 'nullable|string|max:255',
            'banner_image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'banner_content' => 'nullable|string',
            
        ]);
        $input['banner_title'] = $request->input('banner_title');
        $input['banner_content'] = $request->input('banner_content');
        $input['banner_url_link'] = $request->input('banner_url_link');

        if ($request->hasFile('banner_image')) {
            $image = $request->file('banner_image');
            date_default_timezone_set('Asia/Kolkata');
            $time = time();
            $date = date("h-i-s");
            $date_time = date("d-m-Y", $time) . '-' . $date;
            $image_file_name = 'banner-image-' . $date_time;
            $webp_file_name = 'banner-image-' . $date_time . '.webp';
            $destinationPath = public_path('hotel-sankalp-image-file/banner-image');
            Image::make($image)
                ->resize(1920, 600, function ($constraint) {
                    $constraint->aspectRatio();
                    $constraint->upsize();
                })
                ->save($destinationPath . '/' . $image_file_name, 90);
            Image::make($image)
                ->resize(1920, 600, function ($constraint) {
                    $constraint->aspectRatio();
                    $constraint->upsize();
                })
                ->encode('webp', 90) 
                ->save($destinationPath . '/' . $webp_file_name);
            $input['banner_image_desktop'] = $image_file_name; 
            $input['banner_image_webp'] = $webp_file_name;
        }
        $banner_add_input = Banner::create($input);
        if ($banner_add_input){
            return redirect('banner')->with('success','Banner added successfully');
        }else{
            return redirect()->back()->with('error','Somthings went wrong please try again !.');
        }
        return redirect()->back()->with('error','Somthings went wrong please try again !');
    }

    public function showEditForm($id){        
        $banner_edit = Banner::find($id);
        return view('backend.banner.edit' , compact('banner_edit'));
    }

    public function editBannerFormSubmit(Request $request){ 
        
        $this->validate($request, [
            'banner_title' => 'nullable|string',
            'banner_content' => 'nullable|string',
            
        ]);
        $input['banner_title'] = $request->input('banner_title');
        $input['banner_content'] = $request->input('banner_content');
        $input['banner_url_link'] = $request->input('banner_url_link');
        $banner_row = Banner::find($request->banner_id);
        if ($request->hasFile('banner_image')) {
            $image = $request->file('banner_image');
            date_default_timezone_set('Asia/Kolkata');
            $extension = $image->getClientOriginalExtension();
            $time = time();
            $date = date("h-i-s");
            $date_time = date("d-m-Y", $time) . '-' . $date;
            $image_file_name = 'banner-image-' . $date_time;
            $webp_file_name = 'banner-image-' . $date_time . '.webp';
            $destinationPath = public_path('hotel-sankalp-image-file/banner-image/');
            if (!file_exists($destinationPath)) {
                mkdir($destinationPath, 0777, true);
            }
            
            Image::make($image)
                ->resize(1920, 600, function ($constraint) {
                    $constraint->aspectRatio();
                    $constraint->upsize();
                })
                ->encode('webp', 90)
                ->save($destinationPath . $webp_file_name);
            $input['banner_image_desktop'] = $webp_file_name;
            if (isset($banner_row->banner_image_desktop)) {
                $banner_old_file = $destinationPath . $banner_row->banner_image_desktop;
                if (file_exists($banner_old_file)) {
                    unlink($banner_old_file);
                }
            }
                        
        }
        $banner_row_update = $banner_row->update($input);
        return redirect('banner')->with('success','Banner updated successfully');
    }

    public function deleteBanner($id){
        $banner_row = Banner::find($id);
        /*Unlink image*/
        $destinationPath = public_path('hotel-sankalp-image-file/banner-image/');
        $banner_old_file = $destinationPath.$banner_row->banner_image_desktop;
        if (file_exists($banner_old_file)) {
            unlink($banner_old_file);
        }
        $banner_row->delete();
        return redirect('banner')->with('success','Banner deleted successfully');
    }
}
