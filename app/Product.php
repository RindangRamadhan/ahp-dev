<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Product extends Model
{
  use Notifiable;
  
  protected $fillable = [
    'product_name', 
    'product_ingredients', 
    'product_formulation', 
    'product_use', 
    'product_dose', 
    'product_package',
    'kelompok',
    'kategori',
    'gambar',
    'sifat_formulasi',
    'manfaat',
  ];
  

  public function kategoriProduk() {
    return $this->hasOne('App\ProductCategory', 'id', 'kategori_id');
  }
  public function kelompokProduk() {
    return $this->hasOne('App\ProductGroup', 'id', 'kelompok_id');
  }
}
