<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Loaitin;
use App\Theloai;
use App\Http\Requests;



class LoaitinController extends Controller
{
//
	public function getDanhSach(){
		$loaitin= Loaitin::all();
		return view('admin/loaitin/danhsach',['lt'=>$loaitin]);

	}
	public function getThem(){
		$theloai = Theloai::all();

		return view('admin/loaitin/them',['theloai'=>$theloai]);
	}
	public function postThem(Request $request){
		$this->validate($request,
			['Ten'=>'required|unique:Loaitin|min:3|max:100','Theloai'=>'required'],
			[
				'Ten.required'=>'Bạn chưa nhập tên loại tin',
				'Ten.unique'=> 'Tên loại tin đã tồn tại',
				'Ten.min'=>'Tên loại tin phải tối thiểu 3 đến 100 kí tự',
				'Ten.max'=>'Tên loại tin phải tối thiểu 3 đến 100 kí tự',
				'Theloai'=>'Bạn chưa nhập thể  loại'
			]);

		$loaitin = new Loaitin;
		$loaitin->Ten = $request->Ten;
		$loaitin -> TenKhongDau = changeTitle($request->Ten);
		$loaitin->idTheLoai = $request->Theloai;
		$loaitin->save();
		return redirect('admin/loaitin/them')->with('thongbao','Thêm thành công');

	}
	public function getSua($id){
		$loaitin= Loaitin::find($id);
		$theloai=Theloai::all();
		return view('admin/loaitin/sua',['loaitin'=>$loaitin,'theloai'=>$theloai]);

	}
	public function postSua(Request $request,$id){
		{
      $loaitin=Loaitin::find($id);
      $this->validate($request,[
            'Ten'=>'required|unique:Loaitin,Ten|min:3|max:100','Theloai'=>'required'
      ],
      [
             'Ten.required'=> 'Bạn chưa nhập tên thể loại',
             'Ten.min' =>'Tên loại tin phải có đội dài từ 3 đến 100 kí tự',
             'Ten.max'=> 'Tên loại tin phải có đội dài từ 3 đến 100 kí tự',
             'Ten.unique'=>'Tên loại tin đã tồn tại',
             'Theloai'=>'Bạn chưa nhập thể  loại'
]);
  
		$loaitin->Ten = $request->Ten;
		$loaitin -> TenKhongDau = changeTitle($request->Ten);
		$loaitin->idTheLoai = $request->Theloai;
		$loaitin->save();
		return redirect('admin/loaitin/sua/'.$id)->with('thongbao','Sửa thành công');

}
	}
	public function getXoa($id)
	{
		$loaitin= Loaitin::find($id);
		$loaitin->delete();
		return redirect('admin/loaitin/danhsach')->with('thongbao','Bạn đã xóa thành công');
	}
}
