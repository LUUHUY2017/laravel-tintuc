<?php

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


Route::get('thunhap',function(){return view('dangnhap'); });
Route::post('login','LoginController@postLogin')->name('loginpost');// la return redirect->route('loginpost') khong van chám ;  và cái cái name nay bang voi ['as'=>'tenroute','uses'=>'PacgeContrep@grtrtrtr']
Route::get('logout','LoginController@logout');
// paginate(25)
Route::get('tin','TinController@index');


// rieng bài hoàn chỉnh
//backend
Route::get('admin/dangnhap','DangNhapAdminController@getDangNhapAdmin');
Route::post('admin/dangnhap','DangNhapAdminController@postDangNhapAdmin');
Route::get('admin/logout','DangNhapAdminController@getLogoutAdmin');

Route::group(['prefix'=>'admin','middleware'=>'adminMiddleware'],function(){
	Route::get('/',function(){
		return view('admin.layout.trangchu');
	})->name('a');
	Route::group(['prefix'=>'theloai'],function(){
		Route::get('danhsach','TheLoaiController@getDanhSach');
		Route::get('sua/{id}','TheLoaiController@getSua');
		Route::post('sua/{id}','TheLoaiController@postSua');
		Route::get('them','TheLoaiController@getThem')->name('admin/theloai/them');
		Route::post('them','TheLoaiController@postThem');
		Route::get('xoa/{id}','TheLoaiController@getXoa');
	});
	Route::group(['prefix'=>'loaitin'],function(){
		Route::get('danhsach','LoaiTinController@getDanhSach');
		Route::get('sua/{id}','LoaiTinController@getSua');
		Route::post('sua/{id}','LoaiTinController@postSua');
		Route::get('them','LoaiTinController@getThem');
		Route::post('them','LoaiTinController@postThem');
		Route::get('xoa/{id}','LoaiTinController@getXoa');

	});
	Route::group(['prefix'=>'tintuc'],function(){
		Route::get('danhsach','TinTucController@getDanhSach');
		Route::get('sua/{id}','TinTucController@getSua');
		Route::post('sua/{id}','TinTucController@postSua');
		Route::get('them','TinTucController@getThem');
		Route::post('them','TinTucController@postThem');
		Route::get('xoa/{id}','TinTucController@getXoa');

	});
	Route::group(['prefix'=>'ajax'],function(){
		Route::get('loaitin/{idTheLoai}','AjaxController@getLoaiTin');
	});
});

//fontend
Route::get('/','PagesController@trangchu');
Route::get('lienhe','PagesController@lienhe');
Route::get('loaitin/{id}/{TenKhongDau}.html','PagesController@loaitin');
Route::get('tintuc/{id}/{TenKhongDau}.html','PagesController@tintuc');

Route::get('dangnhap','PagesController@getDangNhap');
Route::post('dangnhap','PagesController@postDangNhap');
Route::get('dangxuat','PagesController@getDangXuat');
Route::get('timkiem','PagesController@timkiem');
 //tim kiem thweo phuong thuc get thi request dl dang url
// con post thi khong url ma ma dang ngam form
























