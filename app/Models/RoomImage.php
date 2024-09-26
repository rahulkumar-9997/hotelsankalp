<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomImage extends Model
{
    use HasFactory;
    protected $table = 'room_images';
    protected $fillable = ['id', 'hotel_room_id', 'image_path'];
    public function hotelRoom()
    {
        return $this->belongsTo(HotelRoom::class);
    }
}
