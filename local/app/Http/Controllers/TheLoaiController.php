<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Theloai;
use App\Http\Requests;
  

class TheLoaiController extends Controller
{
//lay danh sãh
      public function getDanhSach(){
            $theloai= Theloai::all();
return view('admin.theloai.danhsach',['loaithe'=>$theloai]); //loaithe dat bua dung ttrong blade
}
//them
public function getThem(){
      return view('admin.theloai.them');
}

public function postThem(Request $request){
      $this->validate($request,
            ['Ten'=> 'required|min:3|max:100|unique:Theloai'], // nhap vao k măc dinh la $errors
[
      'Ten.required'=> 'Bạn chưa nhập tên thể loại',
      'Ten.min' =>'Tên thể loại phải có đội dài từ 3 đến 100 kí tự',
      'Ten.max'=> 'Tên thể loại phải có đội dài từ 3 đến 100 kí tự',
      'Ten.unique'=>'Tên thể loại đã tồn tại'
]);
$theloai = new Theloai; //thêm thể loại
$theloai -> Ten =  $request->Ten; // theloai ten tro vao bang conrequset lay tu form
$theloai -> TenKhongDau = changeTitle($request->Ten);
$theloai ->save();  
return redirect('admin/theloai/them')->with('thongbao','Thêm thành công');
}



//sua
public function getSua($id){
      $theloai= TheLoai::find($id);
      return view('admin.theloai.sua',['loaithe'=>$theloai]);
}
public function postSua(Request $request, $id)
{
      $theloai=Theloai::find($id);
      $this->validate($request,[
            'Ten'=>'required|unique:Theloai,Ten|min:3|max:100'
      ],
      [
             'Ten.required'=> 'Bạn chưa nhập tên thể loại',
             'Ten.min' =>'Tên thể loại phải có đội dài từ 3 đến 100 kí tự',
             'Ten.max'=> 'Tên thể loại phải có đội dài từ 3 đến 100 kí tự',
             'Ten.unique'=>'Tên thể loại đã tồn tại'
]);
      $theloai->Ten = $request->Ten;
      $theloai -> TenKhongDau = changeTitle($request->Ten);
      $theloai->save();
      return redirect('admin/theloai/sua/'.$id)->with('thongbao','Sửa thành công');
}

//xoa
public function getXoa($id)
{
$theloai= Theloai::find($id);
$theloai->delete();
return redirect('admin/theloai/danhsach')->with('thongbao','Bạn đã xóa thành công');
}






}

