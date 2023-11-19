<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BackgroundController;
use App\Http\Controllers\GameController;
use App\Http\Controllers\GenreController;
use App\Http\Controllers\UserController;
use App\Models\Game;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('index', [
        'games' => Game::paginate(8)
    ]);
})->name('index');

Route::get('/game/{game}', [GameController::class, 'show'])->name('game');

Route::get('/randomgame', [GameController::class, 'randomgame'])->name('randomgame');

Route::get('/admin/genre/{genre}', [GenreController::class, 'show'])->name('genre');


Route::group(['middleware' => ['guest']], function () {
    Route::get('/registration', function () {
        return view('auth.registration');
    });
    Route::get('/login', function () {
        return view('auth.login');
    });
    Route::post('/registration', [AuthController::class, 'store'])->name('registration');
    Route::post('/login', [AuthController::class, 'login'])->name('login');

});

Route::group(['middleware' => ['auth']], function () {

    Route::get('/logout', [AuthController::class, 'logout']);

    Route::get('/profile', function () {
        return view('user.profile');
    });

});

Route::group(['middleware' => ['auth', 'admin']], function () {

    Route::get('/admin/panel', function () {
        return view('admin.panel');
    })->name('admin_panel');

    Route::get('/admin/genre', [GenreController::class, 'index'])->name('admin_genre');
    Route::post('/admin/genre', [GenreController::class, 'store'])->name('admin_genre_post');
    Route::get('/admin/genre/edit/{genre}', [GenreController::class, 'admin_show'])->name('admin_genre_edit');
    Route::put('/admin/genre/edit/{genre}', [GenreController::class, 'update'])->name('admin_genre_edit_put');
    Route::delete('/admin/genre/edit/{genre}', [GenreController::class, 'destroy'])->name('admin_genre_edit_delete');

    Route::get('/admin/game', [GameController::class, 'index'])->name('admin_game');
    Route::post('/admin/game', [GameController::class, 'store'])->name('admin_game_post');
    Route::get('/admin/game/edit/{game}', [GameController::class, 'admin_show'])->name('admin_game_edit');
    Route::put('/admin/game/edit/{game}', [GameController::class, 'update'])->name('admin_game_edit_put');
    Route::delete('/admin/game/edit/{game}', [GameController::class, 'destroy'])->name('admin_game_edit_delete');

    Route::get('/admin/user', [UserController::class, 'index'])->name('admin_user');
    Route::post('/admin/user', [UserController::class, 'store'])->name('admin_user_post');
    Route::get('/admin/user/edit/{user}', [UserController::class, 'admin_show'])->name('admin_user_edit');
    Route::put('/admin/user/edit/{user}', [UserController::class, 'update'])->name('admin_user_edit_put');
    Route::delete('/admin/user/edit/{user}', [UserController::class, 'destroy'])->name('admin_user_edit_delete');

    Route::get('/admin/background', [BackgroundController::class, 'index'])->name('admin_background');
    Route::post('/admin/background', [BackgroundController::class, 'store'])->name('admin_background_post');
    Route::get('/admin/background/{background}', [BackgroundController::class, 'index'])->name('admin_background_edit');

});
