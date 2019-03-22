<?php

namespace App\Http\Controllers;

use App\Banner;
use App\Benefit;
use App\OurPartner;
use App\News;
use App\Pengunjung;
use App\TentangKami;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {        
      return view('home');
    }

    public function homepage() {
			$ip      			= Pengunjung::Ip();
			$browser			= Pengunjung::Browser();
			$os      			= Pengunjung::Os();
			$tentangKami	= TentangKami::first();
			$benefits			= Benefit::first();
			$ourPartners	= OurPartner::get();
			$news					= News::orderBy('created_at', 'desc')->get();

			// Check bila sebelumnya data pengunjung sudah terrekam
			if (! isset($_COOKIE['VISITOR'])) {

				// Masa akan direkam kembali
				// Tujuan untuk menghindari merekam pengunjung yang sama dihari yang sama.
				// Cookie akan disimpan selama 24 jam
				$duration = time()+60*60*1;

				// simpan kedalam cookie browser
				setcookie('VISITOR', $browser, $duration);

				$kas = Pengunjung::create([
						'ip'    	=> $ip,
						'os'			=> $os,
						'browser'	=> $browser,
				]);
			}
			
			return view('homepage', [
				'tentangKami' => $tentangKami,
				'benefits' => $benefits,
				'ourPartners' => $ourPartners,
				'news' => $news,
			]);
    }
}
