<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Banner extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'foto',
    ];
}
