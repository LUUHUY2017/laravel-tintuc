<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Loaitin;
use App\Theloai;
use App\Http\Requests;



class AjaxController extends Controller
{
//
	public function getLoaiTin($idTheLoai){
		$loaitin=Loaitin::where('idTheLoai',$idTheLoai)->get();
		foreach($loaitin as $lt)
		{
			echo "<option value='".$lt->id."'>".$lt->Ten."</option>";
		}

	}
}
?>