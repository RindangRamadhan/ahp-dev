<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class ContactProfile extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'nama', 'no_telp', 'whatsapp', 'email'
    ];
}
