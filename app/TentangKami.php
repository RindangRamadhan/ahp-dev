<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class TentangKami extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'deskripsi',
    ];
}
