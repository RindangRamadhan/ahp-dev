<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class TermOfUse extends Model
{
    //
    use Notifiable;
    
    protected $fillable = [
        'deskripsi',
    ];
}
