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
use App\Models\Page;

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

Route::get('/district/{id}', function ($id) {
    $data = page_fields();

    $row = District::findOrFail($id);
    $row = $row ? $row->toArray() : array();

    //

    $upazilas = Upazila::where('district_id', $id)->orderBy('name','asc')->select('name', 'id')->get();
    $row['upazila_items'] = $upazilas ? $upazilas->toArray() : array();

    foreach ($row['upazila_items'] as $key=>$item) {

        $haors = Haor::where('upazila_id', $item['id'])->orderBy('name','asc')->select('thumb_img','area','name', 'id')->get();
        $row['upazila_items'][$key]['haors'] = $haors ? $haors->toArray() : array();
    }

    // get previous haor
    $prev = District::where('id', '<', $id)->orderBy('id','desc')->first();
    if(empty($prev)){
        $prev = District::orderBy('id','desc')->first();
    }
    // get next haor
    $next = District::where('id', '>', $id)->orderBy('id','asc')->first();
    if(empty($next)){
        $next = District::orderBy('id','asc')->first();
    }

    //echo "<pre>";print_r($prev);exit;

    $row['prev_district_id'] = $prev ? $prev->id : '';
    $row['prev_district_name'] = $prev ? $prev->name : '';
    $row['next_district_id'] = $next ? $next->id : '';
    $row['next_district_name'] = $next ? $next->name : '';

    return view('pages.district', array_merge($data, $row));
});

Route::get('/upazila/{id}', function ($id) {
    $data = page_fields();

    $row = Upazila::findOrFail($id);
    $row = $row ? $row->toArray() : array();

    $row['haor_items'] = Haor::where('upazila_id', $id)->orderBy('name','asc')->pluck('name', 'id');

    // get previous haor
    $prev = Upazila::where('id', '<', $id)->orderBy('id','desc')->first();
    if(empty($prev)){
        $prev = Upazila::orderBy('id','desc')->first();
    }
    // get next haor
    $next = Upazila::where('id', '>', $id)->orderBy('id','asc')->first();
    if(empty($next)){
        $next = Upazila::orderBy('id','asc')->first();
    }

    //echo "<pre>";print_r($prev);exit;

    $row['prev_upazila_id'] = $prev ? $prev->id : '';
    $row['prev_upazila_name'] = $prev ? $prev->name : '';
    $row['next_upazila_id'] = $next ? $next->id : '';
    $row['next_upazila_name'] = $next ? $next->name : '';

    return view('pages.upazila', array_merge($data, $row));
});

Route::get('/haor-detail/{id}', function ($id) {
    $data = page_fields();

    $row = Haor::findOrFail($id);
    $row = $row ? $row->toArray() : array();

    $json_fields = array(
        'gallery_items'
    );
    foreach ($row as $field => $content) {
        if(in_array($field, $json_fields) && !empty($content)){
            $row[$field] = json_decode($content, true);
        }
    }

    // get previous haor
    $prev = Haor::where('id', '<', $id)->orderBy('id','desc')->first();
    if(empty($prev)){
        $prev = Haor::orderBy('id','desc')->first();
    }
    // get next haor
    $next = Haor::where('id', '>', $id)->orderBy('id','asc')->first();
    if(empty($next)){
        $next = Haor::orderBy('id','asc')->first();
    }

    //echo "<pre>";print_r($prev);exit;

    $row['prev_haor_id'] = $prev ? $prev->id : '';
    $row['prev_haor_name'] = $prev ? $prev->name : '';
    $row['next_haor_id'] = $next ? $next->id : '';
    $row['next_haor_name'] = $next ? $next->name : '';

    return view('pages.haor-detail', array_merge($data, $row));
});

Route::get('/haors', function () {
    $data = page_fields();

    $data["haor_items"] = haor_list();
    $data["total_haor"] = count($data["haor_items"]);

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

Route::get('/pages/{url_title}', function ($url_title) {
    $data = page_fields();

    $row = Page::where('url_title', $url_title)->first();
    $row = $row ? $row->toArray() : array();

    return view('pages.page', array_merge($data, $row));
});


