<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class PrivacyPolicy extends Model
{
    //
    use Notifiable;
    
    protected $fillable = [
        'deskripsi',
    ];
}
