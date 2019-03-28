<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class ProdukFaq extends Model
{
  use Notifiable;
  
  protected $fillable = [
    'produk_id', 
    'pertanyaan', 
    'penjelasan',
  ];
  
  
  public function produk() {
    return $this->hasOne('App\Product', 'id', 'produk_id');
  }
}
