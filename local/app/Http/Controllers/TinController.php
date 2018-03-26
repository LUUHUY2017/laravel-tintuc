<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tin;

class TinController extends Controller
{
//
	public function index(){
		$tin = Tin::where('id',">",10)->paginate('25')->setPath('tin-trong-nuoc'); //dieukien id10trolen va 25 trang 1 tin duong dan laf tintrongn

	return view('giaodien',['tintuc'=>$tin]);
	}
}
