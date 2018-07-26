<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tin;
use App\Loaitin;
use App\Theloai;
use App\Http\Requests;

class TinTucController extends Controller
{
//
    public function getDanhSach(){
        $tintuc= Tin::orderBy('id','ASC')->get();
        return view('admin.tintuc.danhsach',['tint'=>$tintuc]);
    }

//them
    public function getThem(){
        $theloai= Theloai::all();
        $loaitin= Loaitin::all();

        return view('admin.tintuc.them',['theloai'=>$theloai,'loaitin'=>$loaitin]);
    }
    public function postThem(Request $request)
    {
        $this->validate($request,
            [
                'LoaiTin'=>'required',
                'TieuDe'=>'required|unique:Tintuc|min:3',
                'TomTat'=>'required',
                'NoiDung'=>'required'
            ],[
                'LoaiTin.required'=>'Bạn chưa chọn loại tin',
                'TieuDe.required'=> 'Bạn chưa điền tiêu đề',
                'TieuDe.unique'=>'Tiêu đề đã tồn tại',
                'TieuDe.min'=>'Tiêu đề phải lớn hơn 3 kí tự',
                'NoiDung.required'=>'Bạn chưa điền nội dung',
                'TomTat.required'=>'Bạn chưa điền tóm tắt'
            ]);
        $tintuc = new Tin;
        $tintuc->TieuDe = $request->TieuDe;
        $tintuc->TieuDeKhongDau = changeTitle($request->TieuDe);
        $tintuc->idLoaiTin = $request->LoaiTin;
        $tintuc->TomTat= $request->TomTat;
        $tintuc->NoiDung= $request->NoiDung;
          $tintuc->NoiBat= $request->NoiBat;
        $tintuc->SoLuotXem = 0;
        if($request->hasFile('Hinh'))
        {
            $file =$request->file('Hinh');

            $duoi= $file-> getClientOriginalExtension('Hinh'); // dat $duooi de lay duoi kiem tra duoi hinh cos phai
            if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
            {
                return redirect('admin/tintuc/them')->with('loi','Bạn chỉ được chọn file ảnh có đuôi jpg, png,jpeg');
            }

            $name= $file->getClientOriginalname('Hinh');
            $Hinh = str_random(4)."_".$name;
   
            while(file_exists("uploads/tintuc/".$Hinh)){   // ton tai  thi ngau hung ten dau anh
                $Hinh= str_random(4)."_".$name;
            }
            $file->move("uploads/tintuc",$Hinh);
            $tintuc->Hinh=$Hinh;
        }
        else
        {
            $tintuc->Hinh= "";
        }
    $tintuc->save();
    return redirect('admin/tintuc/them')->with('thongbao','Thêm thành công');
}


//sua
public function getSua($id)
{
    $tintuc= Tin::find($id);
    $theloai= Theloai::all();
    $loaitin= Loaitin::all();
    return view('admin.tintuc.sua',['tin'=>$tintuc,'theloai'=>$theloai,'loaitin'=>$loaitin]);
}

public function postSua(Request $request,$id)
{
        $tintuc= Tin::find($id);
    $this->validate($request,
        [
            'LoaiTin'=>'required',
            'TieuDe'=>'required|unique:tintuc|min:3',
            'TomTat'=>'required',
            'NoiDung'=>'required'
        ],[
            'LoaiTin.required'=>'Bạn chưa chọn loại tin',
            'TieuDe.required'=> 'Bạn chưa điền tiêu đề',
            'TieuDe.unique'=>'Tiêu đề đã tồn tại',
            'TieuDe.min'=>'Tiêu đề phải lớn hơn 3 kí tự',
            'NoiDung.required'=>'Bạn chưa điền nội dung',
            'TomTat.required'=>'Bạn chưa điền tóm tắt'
        ]);

    $tintuc->TieuDe = $request->TieuDe;
    $tintuc->TieuDeKhongDau = changeTitle($request->TieuDe);
    $tintuc->idLoaiTin = $request->LoaiTin;
    $tintuc->TomTat= $request->TomTat;
    $tintuc->NoiDung= $request->NoiDung;
    $tintuc->NoiBat= $request->NoiBat;
    $tintuc->SoLuotXem = 0;
    if($request->hasFile('Hinh'))
    {
        $file =$request->file('Hinh');

    $duoi= $file-> getClientOriginalExtension('Hinh'); // dat $duooi de lay duoi kiem tra duoi hinh cos phai
    if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
         {
        return redirect('admin/tintuc/them')->with('loi','Bạn chỉ được chọn file ảnh có đuôi jpg, png,jpeg');
         }
        
         $name= $file->getClientOriginalname('Hinh');
        $Hinh = str_random(4)."_".$name;
      
         while(file_exists("uploads/tintuc/".$Hinh))
             {   // ton tai  thi ngau hung ten dau anh
                        $Hinh= str_random(4)."_".$name;
             }

          $file->move("uploads/tintuc",$Hinh); // vi tri luu file anh
            //unlink("uploads/tintuc/".$tintuc->Hinh);// xoas file cũ trong thu muc_ neu khong có anh truoc khi sua se bi loi
        $tintuc->Hinh= $Hinh; // luu hinh moi
    }
        $tintuc->save();

        return redirect('admin/tintuc/sua/'.$id)->with('thongbao','Sửa thành công');
}

public function getXoa($id){
    $tintuc= Tin::find($id);
    $tintuc->delete();
    return redirect('admin/tintuc/danhsach')->with('thongbao','Xóa thành công');
}

}