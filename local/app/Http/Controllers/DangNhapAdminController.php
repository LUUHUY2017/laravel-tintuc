<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User; 
use App\Http\Requests;
use Illuminate\Support\Facades\Auth;  

class DangNhapAdminController extends Controller
{
//
	public function getDangNhapAdmin()
	{
		return view('admin.login');
	}
	public function postDangNhapAdmin(Request $request){
		$this->validate($request,[
			'email'=>'required',
			'password'=>'required'],

			['email.required'=>'Bạn chưa nhập email',
			'password.required'=>'Bạn chưa nhập mật khẩu'
			]);
		if(Auth::attempt(['email'=>$request->email,'password'=> $request->password]))
			{
				return redirect('admin/');
			}
				else
				{
					return redirect('admin/dangnhap')->with('thongbao','Đăng nhập không thành công');
				}
			
			}
	public function getLogoutAdmin(){
				Auth::logout();
				return redirect('admin/dangnhap');
			}
		}
