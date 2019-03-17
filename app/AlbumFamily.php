<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class AlbumFamily extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'image'
    ];
}
