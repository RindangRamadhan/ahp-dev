<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class OurProductFaq extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'produk_id', 
        'pertanyaan', 
        'penjelasan',
      ];
      public function produk() {
        return $this->hasOne('App\OurProduct', 'id', 'produk_id');
      }
}
