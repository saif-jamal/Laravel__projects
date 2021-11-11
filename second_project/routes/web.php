<?php

use Illuminate\Support\Facades\Route;

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



Auth::routes();

// routes/web.php

Route::group(['prefix' => LaravelLocalization::setLocale()], function()
{
    /** ADD ALL LOCALIZED ROUTES INSIDE THIS GROUP **/
    Route::get('/', function () {
        return view('welcome');
    });

    Route::get('/Main', function () {
        return view('welcome');
    })->name('Main');

    Route::group(['middleware'=>'auth'],function () {
        Route::group(['middleware' => 'CheckAdmin'], function () {
            Route::get('/home', 'HomeController@index')->name('home');
            Route::get('/Posts', 'PostsController@index')->name('Posts');
            Route::get('Users', 'UsersController@index')->name('Users');
            Route::get('/Categories', 'CategoriesController@index')->name('Categories');
            Route::get('/Comments', 'CommentsController@index')->name('Comments');
            Route::post('/Posts/show', 'PostsController@show')->name('Posts.show');

        });
    });
});





