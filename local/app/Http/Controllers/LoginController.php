<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;


class LoginController extends Controller
{
    //
	public function postLogin(Request $request){// nhan du lieu ve dung request
		$email= $request['email'];
		$password = $request['password'];
		
		//	echo $request->email;// nhan du liwu ve in ra man hinh
		//echo "<br>";
		//echo $request['password'];// 2 casi request nhuw nhau
		//$data = ['email'=>$email,'password'=>$password];
		//
		// $modeluser= User::find(2)	; //dang nhahp voi id =2 thi ra welcome
		// Auth::login($modeluser);
		// return view('welcome',['user'=>Auth::user()]);	
		
		if(Auth::attempt(['email'=>$email,'password'=>$password])) //($data)  cot email tro gia tri cho email $email
			return view('welcome',['user'=>Auth::user()]);
		else
			$loi=' đăng nhập thất bại';
			return view('dangnhap',['error'=>$loi]);	
	}
	public function logout(){
		Auth::logout();
		return view('dangnhap');
	}
}
