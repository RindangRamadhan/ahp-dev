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

// privacy-policy
Route::get('/privacy-policy', 'PrivacyPolicyController@index');
// term-of-use
Route::get('/term-of-use', 'TermOfUSeController@index');
// faq
Route::get('/faq', 'FaqController@index');
// about-us
Route::get('/about-us', 'AboutUsController@index');
// news
Route::get('/news', 'NewsController@index');
Route::get('/news/{id}', 'NewsController@detail');
Route::get('/contact', 'ContactController@index');
Route::get('/product-category/{id}', 'ProductController@kategoriProduk');
Route::get('/product-detail/{id}', 'ProductController@detailProduk');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::resource('download', 'DownloadKatalogController');

//DOWNLOAD KATALOG
Route::post('/download-katalog', [
    'as'         => 'downloadKatalog',
    'uses'       => 'DownloadKatalogController@downloadKatalog',
]);

Route::post('contact', [
'as'        =>'contact',
'uses'      =>'ContactController@sendEmail'
]);

