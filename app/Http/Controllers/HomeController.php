<?php

namespace App\Http\Controllers;

use App\Pengunjung;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $ip      = Pengunjung::getIp();
        $browser = Pengunjung::getBrowser();
        $os      = Pengunjung::getOs();
        $data = [$ip, $browser, $os];
        
        return view('home', ['data' => $data]);
    }
}
