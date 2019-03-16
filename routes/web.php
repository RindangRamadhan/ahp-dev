<?php

use App\Pengunjung;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// HOME
Route::get('/', function () {
    $ip      = Pengunjung::Ip();
    $browser = Pengunjung::Browser();
    $os      = Pengunjung::Os();

    // Check bila sebelumnya data pengunjung sudah terrekam
    if (! isset($_COOKIE['VISITOR'])) {

			// Masa akan direkam kembali
			// Tujuan untuk menghindari merekam pengunjung yang sama dihari yang sama.
			// Cookie akan disimpan selama 24 jam
			$duration = time()+60*60*24;

			// simpan kedalam cookie browser
			setcookie('VISITOR', $browser, $duration);

			$kas = Pengunjung::create([
				'ip'    	=> $ip,
				'os'			=> $os,
				'browser'	=> $browser,
			]);
    }
    
    return view('homepage');
});
// ABOUT US
Route::get('/about-us', function () {
    return view('about-us');
});
// CONTACT
Route::get('/contact', function () {
    return view('contact');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
