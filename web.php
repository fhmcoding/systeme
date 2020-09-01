<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/director/index', 'Director\indexController@index')->middleware("auth","director");

Route::get('/student/index', 'student\indexController@index')->middleware("auth","student");
Route::get('/mora9ib/index', 'mora9ib\indexController@index')->middleware("auth","mora9ib");


//mora9ib
//teatcher.account.edit
Route::prefix('/teatcher')->group(function () {
    Route::get('/index','Teatcher\indexController@index')->name('teatcher.index');
    // for  mon compt
    Route::any('/account','Teatcher\indexController@account')->name('teatcher.account');
    Route::post('/account/edit/{id}','Teatcher\indexController@edit')->name('teatcher.account.edit');
    // for Class :AddClass
    Route::any('/class/add','Teatcher\classController@index')->name('teatcher.lessin.add');
    Route::POST('/class/getLeval','Teatcher\classController@getLeval')->name('teatcher.lessin.getLeval');
    Route::POST('/class/getClasse','Teatcher\classController@getClasse')->name('teatcher.lessin.getClasse');
    Route::POST('/class/getSubjects','Teatcher\classController@getSubjects')->name('teatcher.lessin.getSubjects');

    Route::get('/class/add/maslak/{id}','Teatcher\classController@convert')->name('teatcher.lessin.maslak.convert');
    Route::get('/class/list','Teatcher\classController@show')->name('teatcher.lessin.list');
    Route::get('/class/5435236425356DHVDGHVFGHDV625365523TYFG5435236425356DHVDGHVFGHDV625365523TYFGHVCDTYA553HVCDTYA553/{id}/5435236425356DHVDGHVFGHDV625365523TYFGHVCDTYA553','Teatcher\classController@delete')->name('teatcher.lessin.delete');
    // for lesson :
    Route::any('/lesson/add','Teatcher\lessinController@Add')->name('lesson.Add');
    Route::any('/lesson/show','Teatcher\lessinController@show')->name('lesson.show');
    // lesson.delete
    Route::get('/lesson/delte/5435236425356DHVDGHVFGHDV625365523TYFGHVCDTYA553/{id}/5435236425356DHVDGHVFGHDV625365523TYFGHVCDTYA553','Teatcher\lessinController@delet')->name('lesson.delete');
    // for exercises
    
    Route::any('/exercises/show','Teatcher\exmanController@show')->name('exercises.show');
    // lesson.delete
    Route::get('/exercises/delte/5435236425356DHVDGHVFGHDV625365523TYFGHVCDTYA553/{id}/5435236425356DHVDGHVFGHDV625365523TYFGHVCDTYA553','Teatcher\exmanController@delet')->name('exercises.delete');
});

Route::get('/cat', function () {

    $maslak = App\Maslak::all();
    
    return view('catgory',["maslak" => $maslak]);
    
});
Route::get('/t', function () {

    $categoris = App\Category::find(2);
    $l=$categoris->subcategories;
    $lang=$l[0]->subcategories;
    return $l[1]->categorie;
    
});

Route::post('/getLeval', function (Request $request) {

    $id = $request->cat_id;
    
    $subcategories = App\Maslak::where('id',$id)
                          ->with('levals')
                          ->get();

    return response()->json([
        'subcategories' => $subcategories
    ]);
   
})->name('getLeval');