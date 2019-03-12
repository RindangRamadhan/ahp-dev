<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Benefit extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'title', 'image1', 'benefit1', 'image2', 'benefit2', 'image3',
    ];
}
