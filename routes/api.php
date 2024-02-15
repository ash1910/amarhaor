<?php

use Illuminate\Http\Request;
use App\Models\LandingPage;
use App\Models\District;
use App\Models\Upazila;
use App\Models\Haor;
use App\Models\Page;
use App\Models\River;
use App\Models\Gallery;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:api'); 

Route::get('/send_email_quote', function (Request $request) {

    $data = $request->toArray();
    $text = "";

    foreach ($data as $key => $content) {
        if($key == 'to') continue;
        $text.= ucfirst($key) . " : {$content} \n"; 

    }

    \Mail::raw($text, function ($message) use($data) {

        $message->to($data['to'])
            ->from($data['email'], $data['name'])
            ->subject('Get a free quote');
    });


    //echo "<pre>";print_r($data);exit;

    return ['response' => 'success'];
});

Route::get('/home', function () {
    $data = page_fields();
    return $data;
});

Route::get('/district/{id}', function ($id) {

    $upazilas = Upazila::where('district_id', $id)->orderBy('name','asc')->select('name', 'id')->get();
    $data = $upazilas ? $upazilas->toArray() : array();

    foreach ($data as $key=>$item) {

        $haors = Haor::where('upazila_id', $item['id'])->orderBy('name','asc')->select('thumb_img','area','name', 'id')->get();
        $data[$key]['haors'] = $haors ? $haors->toArray() : array();
    }

    return $data;
});

Route::get('/upazila/{id}', function ($id) {
    $data = upazila($id);

    return $data;
});

Route::get('/haor-detail/{id}', function ($id) {

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

    return $row;
});

Route::get('/haors', function () {
    $data = haors();

    return $data;
});

Route::get('/statistics', function () {
    $data = page_fields();

    return $data;
});
Route::get('/travel', function () {
    $data = page_fields();

    return $data;
});
Route::get('/resort', function () {
    $data = page_fields();

    return $data;
});
Route::get('/bird', function () {
    $data = page_fields();

    return $data;
});
Route::get('/fish', function () {
    $data = page_fields();

    return $data;
});

Route::get('/cookies', function () {
    $data = page_fields();

    return $data;
});

Route::get('/privacy-policy', function () {
    $data = page_fields();

    return $data;
});

Route::get('/terms-of-use', function () {
    $data = page_fields();

    return $data;
});

Route::get('/pages/{url_title}', function ($url_title) {
    $row = Page::where('url_title', $url_title)->first();
    $row = $row ? $row->toArray() : array();

    return $row;
});

Route::get('/rivers', function () {
    $data = array();
    $rivers = River::orderBy('id','asc')->get();
    $data['rivers'] = $rivers ? $rivers->toArray() : array();
    
    return $data;
});

Route::get('/galleries', function () {
    $data = array();
    $galleries = Gallery::orderBy('id','desc')->pluck('image');
    $data = $galleries ? $galleries->toArray() : array();
    
    return $data;
});

Route::get('/haor_list', function () {
    $haor_list = Haor::select('name', 'id', 'district_id', 'upazila_id')->orderBy('district_id','asc')->orderBy('upazila_id','asc')->orderBy('name','asc')->get();
    $data = $haor_list ? $haor_list->toArray() : array();
    return $data;
});
Route::get('/district_list', function () {
    $district_list = District::all('name', 'id');
    $data = $district_list ? $district_list->toArray() : array();
    return $data;
});
Route::get('/district_detail_list', function () {
    $district_list = District::all('name', 'id', 'header_img');
    $data = $district_list ? $district_list->toArray() : array();
    return $data;
});
Route::get('/upazila_list', function () {
    return upazila_list();
});
