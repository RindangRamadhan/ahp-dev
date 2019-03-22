<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Contact extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'nama',
        'email',
        'nomor_telephon',
        'subject',
        'pesan'
    ];
    
}
