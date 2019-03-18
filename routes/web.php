<?php


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
Route::get('/', 'HomeController@homepage');

// ABOUT US
Route::get('/about-us', function () {
    return view('about-us');
});
// CONTACT
Route::get('/contact', function () {
    return view('contact');
});
// privacy-policy
Route::get('/privacy-policy', 'PrivacyPolicyController@index');
// privacy-policy
Route::get('/term-of-use', 'TermOfUSeController@index');
// privacy-policy
Route::get('/faq', 'FaqController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::resource('download', 'DownloadKatalogController');

//DOWNLOAD KATALOG
Route::post('/download-katalog', [
    'as'         => 'downloadKatalog',
    'uses'       => 'DownloadKatalogController@downloadKatalog',
]);
