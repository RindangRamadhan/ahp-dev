<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class OurPartner extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'partner', 'logo'
    ];
}
