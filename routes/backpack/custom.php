<?php

// --------------------------
// Custom Backpack Routes
// --------------------------
// This route file is loaded automatically by Backpack\Base.
// Routes you generate using Backpack\Generators will be placed here.

Route::get('api/article', 'App\Http\Controllers\Api\ArticleController@index');
Route::get('api/article-search', 'App\Http\Controllers\Api\ArticleController@search');

Route::group([
    'prefix'     => config('backpack.base.route_prefix', 'admin'),
    'middleware' => ['web', config('backpack.base.middleware_key', 'admin')],
    'namespace'  => 'App\Http\Controllers\Admin',
], function () { // custom admin routes
    // -----
    // CRUDs
    // -----


    Route::crud('landing-page', 'LandingPageCrudController');
    Route::crud('patient', 'PatientCrudController');
    Route::crud('payment', 'PaymentCrudController');
    Route::crud('district', 'DistrictCrudController');
    Route::crud('upazila', 'UpazilaCrudController');
    Route::crud('haor', 'HaorCrudController');
    Route::crud('haor-detail', 'HaorDetailCrudController');

    Route::get('upazila_model/ajax-upazila-options', 'UpazilaCrudController@upazilaOptions');

}); // this should be the absolute last line of this file