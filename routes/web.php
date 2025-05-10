<?php
/**
 * 
 * https://dev.to/codeanddeploy/laravel-8-user-roles-and-permissions-step-by-step-tutorial-1dij
 */
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Frontend\FrontHomeController;
use App\Http\Controllers\Backend\LoginController;
use App\Http\Controllers\Backend\ForgotPasswordController;
use App\Http\Controllers\Backend\UsersController;
use App\Http\Controllers\Backend\RolesController;
use App\Http\Controllers\Backend\PermissionsController;
use App\Http\Controllers\Backend\DashboardController;
use App\Http\Controllers\Backend\BannerController;
use App\Http\Controllers\Backend\HotelFacilitiesController;
use App\Http\Controllers\Backend\HotelRoomController;

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

Route::get('/', [FrontHomeController::class, 'home'])->name('home');
Route::get('about-us', [FrontHomeController::class, 'aboutUs'])->name('about-us');
Route::get('banquet-and-conference-hall', [FrontHomeController::class, 'banquetAndCobferenceHall'])->name('banquet-and-conference-hall');
Route::get('restaurant', [FrontHomeController::class, 'restaurant'])->name('restaurant');
Route::get('our-room', [FrontHomeController::class, 'ourRoom'])->name('our-room');
Route::get('our-room/{slug}', [FrontHomeController::class, 'ourRoomDetails'])->name('our-room.details');
Route::get('facilities', [FrontHomeController::class, 'ourFacilities'])->name('facilities');
Route::get('contact-us', [FrontHomeController::class, 'contactUs'])->name('contact-us');
Route::post('home-quick-enquiry.store', [FrontHomeController::class, 'homeEnquiryQuickSubmit'])->name('home-quick-enquiry.store');
Route::group(['middleware' => ['web']], function() {
    Route::post('book-a-room.store', [FrontHomeController::class, 'bookARooom'])->name('book-a-room.store');
    Route::post('contact-form.store', [FrontHomeController::class, 'contactForm'])->name('contact-form.store');
});
Route::get('/clear-cache', [FrontHomeController::class, 'clearCache'])->name('clear-cache');
Route::post('book-a-table', [FrontHomeController::class, 'bookAtableModalForm'])->name('book.a.table');
Route::post('book-a-table-submit', [FrontHomeController::class, 'bookAtableModalFormSubmit'])->name('book.a.table.submit');
/**backend rout */
Route::get('/login', [LoginController::class, 'showLoginForm']);
Route::post('/login', [LoginController::class, 'login'])->name('login');
Route::get('forget/password', [ForgotPasswordController::class, 'showForgetPasswordForm'])->name('forget.password');
Route::post('forget.password', [ForgotPasswordController::class, 'submitForgetPasswordForm'])->name('forget.password.post');

Route::get('reset-password/{token}', [ForgotPasswordController::class, 'showResetPasswordForm'])->name('reset.password.get');
Route::post('reset-password', [ForgotPasswordController::class, 'submitResetPasswordForm'])->name('reset.password.post');

Route::get('/logout', [LoginController::class, 'logout'])->name('logout');
Route::group(['middleware' => ['auth', 'permission']], function() {
    /**CREATE USER AND ASSIGN ROLE AND PERMISSION */
    Route::group(['prefix' => 'users'], function() {
        Route::get('/', [UsersController::class, 'index'])->name('users');
        Route::get('/create', [UsersController::class, 'create'])->name('users.create');
        Route::post('/create', [UsersController::class, 'store'])->name('users.store');
        Route::get('/{user}/show', [UsersController::class, 'show'])->name('users.show');
        Route::get('/{user}/edit', [UsersController::class, 'edit'])->name('users.edit');
        Route::patch('/{user}/update', [UsersController::class, 'update'])->name('users.update');
        Route::delete('/{user}/delete', [UsersController::class, 'destroy'])->name('users.destroy');
        // Route::delete('/{user}/delete', 'UsersController@destroy')->name('users.destroy');
        Route::resource('roles', RolesController::class);
        Route::resource('permissions', PermissionsController::class);
    });
    /**CREATE USER AND ASSIGN ROLE AND PERMISSION */
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('manage-profile', [DashboardController::class, 'showProfileUpdateForm'])->name('manage-profile');
    Route::post('manage-profile.update', [DashboardController::class, 'updateProfile'])->name('manage-profile.update');
    Route::get('banner', [BannerController::class, 'index'])->name('banner');
    Route::get('banner/add', [BannerController::class, 'addForm'])->name('banner.add');
    Route::post('banner.store', [BannerController::class, 'addFormSubmit'])->name('banner.store');
    Route::get('banner/edit/{id}', [BannerController::class, 'showEditForm'])->name('banner.edit');
    Route::post('banner.update', [BannerController::class, 'editBannerFormSubmit'])->name('banner.update');
    Route::delete('banner/delete/{id}', [BannerController::class, 'deleteBanner'])->name('banner.delete');

    Route::get('hotel-facilities', [HotelFacilitiesController::class, 'index'])->name('hotel-facilities');
    Route::get('hotel-facilities/add', [HotelFacilitiesController::class, 'facilitiesShowForm'])->name('hotel-facilities.add');
    Route::post('hotel-facilities/store', [HotelFacilitiesController::class, 'facilitiesAddFormSubmit'])->name('hotel-facilities.store');
    Route::get('hotel-facilities/edit/{id}', [HotelFacilitiesController::class, 'showEditForm'])->name('hotel-facilities.edit');
    Route::post('hotel-facilities.update', [HotelFacilitiesController::class, 'editFormSubmit'])->name('hotel-facilities.update');
    Route::delete('hotel-facilities/delete/{id}', [HotelFacilitiesController::class, 'deleteFacilities'])->name('hotel-facilities.delete');

    Route::get('hotel-room', [HotelRoomController::class, 'index'])->name('hotel-room');
    Route::get('hotel-room/add', [HotelRoomController::class, 'hotelRoomShowForm'])->name('hotel-room.add');
    Route::post('hotel-room/store', [HotelRoomController::class, 'hotelRoomAddFormSubmit'])->name('hotel-room.store');
    Route::get('hotel-room/edit/{id}', [HotelRoomController::class, 'showEditForm'])->name('hotel-room.edit');
    Route::post('hotel-room.update', [HotelRoomController::class, 'editFormSubmit'])->name('hotel-room.update');

    Route::delete('hotel-room/delete/{id}', [HotelRoomController::class, 'deleteHotelRooms'])->name('hotel-room.delete');

    Route::delete('multiple-img/delete/{id}', [HotelRoomController::class, 'deleteHotelRoomsImage'])->name('multiple-img.delete');

});