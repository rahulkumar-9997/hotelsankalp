<?php

namespace App\Http\Controllers\Backend;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\HotelRoom;
use App\Models\RoomImage;
use Image;
class HotelRoomController extends Controller
{
    public function index(){
        $data['hotel_room'] = HotelRoom::with('images')->orderBy('id', 'desc')->get();
        return view('backend.hotel-room.index', compact('data'));
    }

    public function hotelRoomShowForm(){        
        return view('backend.hotel-room.add');
    }

    public function hotelRoomAddFormSubmit(Request $request){ 
        $this->validate($request, [
            'room_name' => 'required',
            'room_price' => 'required|numeric',
            'room_image' => 'required',
            'room_image.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'room_description' => 'required',
            
        ]);
        $input['title'] = $request->input('room_name');
        $input['room_price'] = $request->input('room_price');
        $input['details'] = $request->input('room_description');
        $add_hotel_room = HotelRoom::create($input);
        if($add_hotel_room){
            if ($request->hasFile('room_image')){
                $files = $request->file('room_image');
                foreach ($files as $file) {
                    $image = $file;
                    date_default_timezone_set('Asia/Kolkata');
                    $filenameWithExt = $image->getClientOriginalName();
                    $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
                    $extension = $image->getClientOriginalExtension();
                    $time = time();
                    $microtime = microtime(true);
                    $milliseconds = sprintf("%03d", ($microtime - floor($microtime)) * 1000);
                    $date_his = date("h-i-s", $microtime);
                    $timeWithMilliseconds = $date_his . '-' . $milliseconds;
                    //$date = date("h-i-s");
                    $date_time = date("d-m-Y"). '-' . $timeWithMilliseconds;
                    $image_file_name = 'room-image-' . $date_time . '.' . $extension;
                    /**
                     * 
                     * large image
                     */
                    $destination_path_large = public_path('hotel-sankalp-image-file/room-image/large/');
                    $img_large = Image::make($image->getRealPath());
                    $img_large->resize(1920, 1080, function ($constraint) {
                        $constraint->aspectRatio();
                    })->save($destination_path_large.'/'.$image_file_name);
                    /**
                     * small image
                     */
                    $destination_path_small = public_path('hotel-sankalp-image-file/room-image/small/');
                    $img_small = Image::make($image->getRealPath());
                    $img_small->resize(800, 600, function ($constraint) {
                        $constraint->aspectRatio();
                    })->save($destination_path_small.'/'.$image_file_name);
                    /**
                     * thumb image
                     */
                    $destination_path_thumb = public_path('hotel-sankalp-image-file/room-image/thumb/');
                    $img_thumb = Image::make($image->getRealPath());
                    $img_thumb->resize(150, 150, function ($constraint) {
                        $constraint->aspectRatio();
                    })->save($destination_path_thumb.'/'.$image_file_name);
                    /**
                     * icon image
                     */

                    $destination_path_icon = public_path('hotel-sankalp-image-file/room-image/icon/');
                    $img_icon = Image::make($image->getRealPath());
                    $img_icon->resize(150, 150, function ($constraint) {
                        $constraint->aspectRatio();
                    })->save($destination_path_icon.'/'.$image_file_name);
                    /**
                     * original image
                     */
                    $destinationPath = public_path('hotel-sankalp-image-file/room-image/original/');
                    $image->move($destinationPath, $image_file_name);
                    
                    $room_image_input['image_path'] = $image_file_name;
                    $room_image_input['hotel_room_id'] = $add_hotel_room->id;
                    
                    $room_image_upload = RoomImage::create($room_image_input);
                }
                if ($room_image_upload){
                    return redirect('hotel-room')->with('success','Room added successfully');
                }else{
                    return redirect()->back()->with('error','Somthings went wrong please try again !.');
                }
                
            }
        }
        return redirect()->back()->with('error','Somthings went wrong please try again !');
    }

    public function showEditForm($id){
        $hotel_room_edit = HotelRoom::with('images')->findOrFail($id); 
        //dd($hotel_room_edit);
        return view('backend.hotel-room.edit' , compact('hotel_room_edit'));
    }

    public function editFormSubmit(Request $request){ 
        $this->validate($request, [
            'room_name' => 'required',
            'room_price' => 'required|numeric',
            
            'room_description' => 'required',
            
        ]);
        $input['title'] = $request->input('room_name');
        $input['room_price'] = $request->input('room_price');
        $input['details'] = $request->input('room_description');
        $hotel_room_row = HotelRoom::find($request->hotel_room_id);
        $update_hotel_room_row = $hotel_room_row->update($input);
        
        if ($request->hasFile('room_image')){
            $files = $request->file('room_image');
            foreach ($files as $file) {
                $image = $file;
                date_default_timezone_set('Asia/Kolkata');
                $filenameWithExt = $image->getClientOriginalName();
                $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
                $image_name = str_replace('-', ' ', $filename);
                $extension = $image->getClientOriginalExtension();
                $time = time();
                $microtime = microtime(true);
                $milliseconds = sprintf("%03d", ($microtime - floor($microtime)) * 1000);
                $date_his = date("h-i-s", $microtime);
                $timeWithMilliseconds = $date_his . '-' . $milliseconds;
                //$date = date("h-i-s");
                $date_time = $image_name. '-' . $timeWithMilliseconds;
                $image_file_name = 'room-image-' . $date_time . '.' . $extension;
                /**
                 * 
                 * large image
                 */
                $destination_path_large = public_path('hotel-sankalp-image-file/room-image/large/');
                $img_large = Image::make($image->getRealPath());
                $img_large->resize(1920, 1080, function ($constraint) {
                    $constraint->aspectRatio();
                })->save($destination_path_large.'/'.$image_file_name);
                /**
                 * small image
                 */
                $destination_path_small = public_path('hotel-sankalp-image-file/room-image/small/');
                $img_small = Image::make($image->getRealPath());
                $img_small->resize(800, 600, function ($constraint) {
                    $constraint->aspectRatio();
                })->save($destination_path_small.'/'.$image_file_name);
                /**
                 * thumb image
                 */
                $destination_path_thumb = public_path('hotel-sankalp-image-file/room-image/thumb/');
                $img_thumb = Image::make($image->getRealPath());
                $img_thumb->resize(150, 150, function ($constraint) {
                    $constraint->aspectRatio();
                })->save($destination_path_thumb.'/'.$image_file_name);
                /**
                 * icon image
                 */

                $destination_path_icon = public_path('hotel-sankalp-image-file/room-image/icon/');
                $img_icon = Image::make($image->getRealPath());
                $img_icon->resize(150, 150, function ($constraint) {
                    $constraint->aspectRatio();
                })->save($destination_path_icon.'/'.$image_file_name);
                /**
                 * original image
                 */
                $destinationPath = public_path('hotel-sankalp-image-file/room-image/original/');
                $image->move($destinationPath, $image_file_name);
                
                $room_image_input['image_path'] = $image_file_name;
                $room_image_input['hotel_room_id'] = $request->hotel_room_id;
                
                $room_image_upload = RoomImage::create($room_image_input);
            }
           
        }
        if ($update_hotel_room_row){
            return redirect('hotel-room')->with('success','Room updated successfully');
        }else{
            return redirect()->back()->with('error','Somthings went wrong please try again !.');
        }
    }

    public function deleteHotelRooms($id){
        $hotelRoom_row = HotelRoom::with('images')->findOrFail($id);
        $destination_path_large = public_path('hotel-sankalp-image-file/room-image/large/');
        $destination_path_small = public_path('hotel-sankalp-image-file/room-image/small/');
        $destination_path_thumb = public_path('hotel-sankalp-image-file/room-image/thumb/');
        $destination_path_icon = public_path('hotel-sankalp-image-file/room-image/icon/');
        $destination_path_original = public_path('hotel-sankalp-image-file/room-image/original/');
        foreach ($hotelRoom_row->images as $image_row) {
            $large_old_file = $destination_path_large.$image_row->image_path;
            if (file_exists($large_old_file)) {
                unlink($large_old_file);
            }
            $small_old_file = $destination_path_small.$image_row->image_path;
            if (file_exists($small_old_file)) {
                unlink($small_old_file);
            }
            $thumb_old_file = $destination_path_thumb.$image_row->image_path;
            if (file_exists($thumb_old_file)) {
                unlink($thumb_old_file);
            }
            $icon_old_file = $destination_path_icon.$image_row->image_path;
            if (file_exists($icon_old_file)) {
                unlink($icon_old_file);
            }
            $original_old_file = $destination_path_original.$image_row->image_path;
            if (file_exists($original_old_file)) {
                unlink($original_old_file);
            }
            $image_row->delete(); 
        }
        $hotelRoom_row->delete();
        return redirect('hotel-room')->with('success','Hotel Room deleted successfully');
    }

    public function deleteHotelRoomsImage($id){
        $room_image_row = RoomImage::find($id);
        $destination_path_large = public_path('hotel-sankalp-image-file/room-image/large/');
        $destination_path_small = public_path('hotel-sankalp-image-file/room-image/small/');
        $destination_path_thumb = public_path('hotel-sankalp-image-file/room-image/thumb/');
        $destination_path_icon = public_path('hotel-sankalp-image-file/room-image/icon/');
        $destination_path_original = public_path('hotel-sankalp-image-file/room-image/original/');
       
        $large_old_file = $destination_path_large.$room_image_row->image_path;
        if (file_exists($large_old_file)) {
            unlink($large_old_file);
        }
        $small_old_file = $destination_path_small.$room_image_row->image_path;
        if (file_exists($small_old_file)) {
            unlink($small_old_file);
        }
        $thumb_old_file = $destination_path_thumb.$room_image_row->image_path;
        if (file_exists($thumb_old_file)) {
            unlink($thumb_old_file);
        }
        $icon_old_file = $destination_path_icon.$room_image_row->image_path;
        if (file_exists($icon_old_file)) {
            unlink($icon_old_file);
        }
        $original_old_file = $destination_path_original.$room_image_row->image_path;
        if (file_exists($original_old_file)) {
            unlink($original_old_file);
        }
        $room_image_row->delete(); 
        return redirect('hotel-room')->with('success','Hotel Room image deleted successfully');
    }

}
