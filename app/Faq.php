<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Faq extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'deskripsi',
    ];
}
