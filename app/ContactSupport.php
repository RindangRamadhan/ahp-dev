<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class ContactSupport extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'info', 'alamat'
    ];
}