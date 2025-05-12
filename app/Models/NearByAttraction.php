<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;
class NearByAttraction extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'slug',
        'image_file',
        'description'
    ];

    // Automatically generate slug from title
    public static function createSlug($title)
    {
        if (static::whereSlug($slug = Str::slug($title))->exists()) {
            $max = static::whereTitle($title)->latest('id')->skip(1)->value('slug');
            
            if (is_numeric($max[-1])) {
                return preg_replace_callback('/(\d+)$/', function ($matches) {
                    return $matches[1] + 1;
                }, $max);
            }
            
            return "{$slug}-2";
        }
        
        return $slug;
    }
}
