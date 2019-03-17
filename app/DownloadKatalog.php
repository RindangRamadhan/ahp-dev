<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;


class DownloadKatalog extends Model
{
    use Notifiable;
    
    protected $fillable = [
        'nama_lengkap', 'perusahaan', 'email', 'no_telp',
    ];
}
