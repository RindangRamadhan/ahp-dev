<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class ProductCategory extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'category_name',
    ];
}
