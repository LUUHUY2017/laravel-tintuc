<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Theloai;
use App\Slide;
use App\Tin;
use App\Loaitin;
use App\User;
use Illuminate\Support\Facedes\Auth;

class PagesController extends Controller
{
// Cach 2: dungf view share 
  function __construct()
  {
    $slide= Slide::all();
    $tintuc= Tin::all();
    $theloai= Theloai::all();
view()->share('theloai',$theloai); // chia se view nao cung co
view()->share('slide',$slide);
}

//Cách 1: fun nào cùng gội $theloai khong hay nen dung fun construct de luc nao dung pages de có $theloai
function trangchu(){
			    	// $theloai= Theloai::all();
			    	// return view('page.trangchu',['theloai'=>$theloai]);
  return view('page.trangchu');
}
function lienhe(){
		   //  	 	 $theloai= Theloai::all();
  return view('page.lienhe');
}
function loaitin($id){
  $loaitin= Loaitin::find($id);
$tintuc= Tin::where('idLoaiTin',$id)->paginate(5);// tim bang tin voi cot idLoaiTin theo id nhap vao	
return view('page.loaitin',['loaitin'=>$loaitin,'tintuc'=>$tintuc]);
}
public function tintuc($id){
  $tintuc= Tin::find($id);
  $tinnoibat= Tin::where('NoiBat',1)->take(4)->get();
  $tinlienquan= Tin::where('idLoaiTin',$tintuc->idLoaiTin)->take(5)->get();
  return view('page.chitiettin',['tintuc'=>$tintuc,'tinnoibat'=>$tinnoibat,'tinlienquan'=>$tinlienquan]);
}

public function getDangNhap(){
  return view('page.dangnhap');
}

public function postDangNhap(Request $request)
{
$this-> validate($request,[
'email'=>'required',
'password'=>'required|min:3'],[
'email.required'=> 'Bạn chưa nhập email',
'password.required'=>'Bạn chưa nhập mật khẩu',
'password.min'=>'Mật khẩu phải tối thiểu 3 kí tự'
]);
$email=$request->email;
$password= $request->password;
  if(Auth::attempt(['email'=>$email,'password'=>$password])) //($data)  cot email tro gia tri cho email $email
      return view('welcome',['user'=>Auth::user()]);



}
}
