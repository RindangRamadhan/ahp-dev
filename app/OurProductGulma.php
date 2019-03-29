<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Intervention\Image\ImageManagerStatic as Image;

class OurProductGulma extends Model
{
    use Notifiable;
    protected $fillable = ['produk_id', 'pictures'];

    public function getPicturesAttribute($pictures)
    {
        if (is_string($pictures)) {
            return json_decode($pictures, true);
        }
        return $pictures;
    }

    public function setPicturesAttribute($pictures)
    {
        if (is_array($pictures)) {
            $this->attributes['pictures'] = json_encode($pictures);

            foreach ($pictures as $data) {
                $img = Image::make('../public/storage/'.$data);
                $img->fit(600, 360);
                $img->save();
            }
        }
    }
    public function product() {
        return $this->hasOne('App\OurProduct', 'id', 'produk_id');
    }
}
