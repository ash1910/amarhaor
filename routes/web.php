<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/
use Illuminate\Http\Request;
use App\Models\LandingPage;

function page_fields(){

    $landingPage = LandingPage::find(1);
    $data = $landingPage ? $landingPage->toArray() : array();

    $json_fields = array(
        'topbar_menu_items', 
        'social_media_menu_items',
        'home_content_items',
        'about_content_items',
        'footer_link_items'
    );
    foreach ($data as $field => $content) {

        if(in_array($field, $json_fields) && !empty($content)){
            $data[$field] = json_decode($content, true);
        }

    }
    //echo "<pre>";print_r($data);exit;

    return $data;
}

Route::get('/', function () {
    $data = page_fields();

    return view('pages.home', $data); // view('welcome');
});

Route::get('/district', function () {
    $data = page_fields();

    return view('pages.district', $data);
});

Route::get('/upazila', function () {
    $data = page_fields();

    return view('pages.upazila', $data);
});

Route::get('/haor-detail', function () {
    $data = page_fields();

    return view('pages.haor-detail', $data);
});

Route::get('/haors', function () {
    $data = page_fields();

    return view('pages.haors', $data);
});

Route::get('/statistics', function () {
    $data = page_fields();

    return view('pages.statistics', $data);
});
Route::get('/travel', function () {
    $data = page_fields();

    return view('pages.travel', $data);
});
Route::get('/resort', function () {
    $data = page_fields();

    return view('pages.resort', $data);
});
Route::get('/bird', function () {
    $data = page_fields();

    return view('pages.bird', $data);
});
Route::get('/fish', function () {
    $data = page_fields();

    return view('pages.fish', $data);
});


Route::get('/cookies', function () {
    $data = page_fields();

    return view('pages.cookies', $data);
});

Route::get('/privacy-policy', function () {
    $data = page_fields();

    return view('pages.privacy-policy', $data);
});

Route::get('/terms-of-use', function () {
    $data = page_fields();

    return view('pages.terms-of-use', $data);
});

