<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class ProductGroup extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'group_name',
    ];
}
