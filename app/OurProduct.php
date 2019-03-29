<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\OurProductCategory;
use App\OurProductGroup;

class OurProduct extends Model
{
    protected $fillable = ['product_name', 'product_ingredients', 'product_formulation', 'product_use', 'product_dose', 'product_package', 'kategori_id', 'kelompok_id', 'gambar', 'sifat_formulasi', 'manfaat'];

    public function kategoriProduk() {
        return $this->hasOne('App\OurProductCategory', 'id', 'kategori_id');
      }
      public function kelompokProduk() {
        return $this->hasOne('App\OurProductGroup', 'id', 'kelompok_id');
      }
}
