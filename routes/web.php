<?php

use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\FontendController;
use App\Http\Controllers\PostController;
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

Route::get('/', function () {
    return view('/auth/login');
});


Route::get('/home',[FontendController::class,'index'])->name('home');
Route::get('/post-view/{id}',[FontendController::class,'viewPost']);
Route::get('/cate_wise_post/{id}',[FontendController::class,'viewCatePost']);
Route::get('/view_all_cate',[FontendController::class,'viewallCate']);
// Route::get('/cate-view/{id}',[FontendController::class,'cateWise']);


// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth'])->name('dashboard');

Route::group(['middleware' => 'auth'], function(){

 Route::get('dashboard',[DashboardController::class,'index']);

    ///category
Route::get('/cate',[CategoriesController::class,'index'])->name('cate');

Route::post('/add',[CategoriesController::class,'add']);

Route::get('/edit/{id}',[CategoriesController::class,'edit'])->name('edit');

Route::post('/update/{id}',[CategoriesController::class,'update']);

Route::get('/delete/{id}',[CategoriesController::class,'destroy'])->name('cate_destroy');

///Posts
Route::get('/post/list',[PostController::class,'index']);

Route::get('/posts',[PostController::class,'add']);

Route::post('/postadd',[PostController::class,'store']);

Route::get('/destroy/{id}',[PostController::class,'destroy'])->name('remove');

});

require __DIR__.'/auth.php';
