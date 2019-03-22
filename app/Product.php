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
    'gambar'
  ];
}
