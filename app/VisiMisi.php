<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class VisiMisi extends Model
{
    //
    use Notifiable;
    
    protected $fillable = [
        'deskripsi',
    ];
}
