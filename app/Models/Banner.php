<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    use HasFactory;
    protected $table = 'banner';
    protected $fillable = [
        'id',
        'banner_title',
        'banner_content',
        'banner_url_link',
        'banner_image_desktop',
        'banner_image_mobile',
    ];
}
