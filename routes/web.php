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
use App\Models\District;
use App\Models\Upazila;
use App\Models\Haor;

function page_fields(){

    $landingPage = LandingPage::find(1);
    $data = $landingPage ? $landingPage->toArray() : array();

    $json_fields = array(
        'topbar_menu_items', 
        'social_media_menu_items',
        'mega_menu_items',
        'home_exploring_items',
        'home_featured_haors_items',
        'home_haor_map_items',
        'home_conservation_effects_items',
        'home_summary_report_items',
        'home_recreation_tourism_items',
        'home_gallery_items',
        'resort_page_hotel_list',
        'footer_link_items',
        'footer_link_items_section2'
    );
    foreach ($data as $field => $content) {

        if(in_array($field, $json_fields) && !empty($content)){
            $data[$field] = json_decode($content, true);
        }

    }
    //echo "<pre>";print_r($data);exit;

    return $data;
}

function district_list(){
    $district_list = District::pluck('name', 'id');
    $data = $district_list ? $district_list->toArray() : array();
    return $data;
}

function upazila_list(){
    $upazila_list = Upazila::all('name', 'id', 'district_id');
    $data = $upazila_list ? $upazila_list->toArray() : array();
    return $data;
}

function haor_list(){
    $haor_list = Haor::all('name', 'id', 'district_id', 'upazila_id');
    $data = $haor_list ? $haor_list->toArray() : array();
    return $data;
}

Route::get('/', function () {
    $data = page_fields();

    $data["district_list"] = district_list();
    $data["upazila_list"] = upazila_list();
    $data["haor_list"] = haor_list();
    
    //echo "<pre>";print_r($data);exit;
    return view('pages.home', $data); // view('welcome');
});

Route::get('/district/{id}', function () {
    $data = page_fields();

    return view('pages.district', $data);
});

Route::get('/upazila/{id}', function () {
    $data = page_fields();

    return view('pages.upazila', $data);
});

Route::get('/haor-detail/{id}', function () {
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

