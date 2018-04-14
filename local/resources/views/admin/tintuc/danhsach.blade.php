@extends('admin.layout.index')
@section('title','Tin Tức - Danh Sách')
@section('content')
<div  id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class=" col-sm-12 col-lg-12">
                <h1 class="page-header">Tin Tức
                    <small>Danh Sách</small>
                </h1>
            </div>
            <div class="row">
                <div class="col-sm-12 col-lg-12">
                @if(session('thongbao'))
                <div class="alert alert-success" >
                    {{session('thongbao')}}
                </div>
                @endif
</div>
            </div>
            <!-- /.col-lg-12 -->
          <div class="table-responsive">          
            <table class="table table-striped table-bordered table-hover " id="dataTables-example">
                <thead>
                    <tr align="center">
					  <th>STT</th>
                        <th>ID</th>
                          <th>Ảnh</th>
                        <th>Tiêu Đề</th>
                       
                         <th>Tóm Tắt</th>
                         <th>Nội Dung</th>
                        
                      
                        <th>Nổi Bật</th>
                        <th>Số Lượt Xem</th>
                        <th>Thể Loại</th>
                        <th>Loại Tin</th>
                        <th>Delete</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($tint as $key => $tin)                  
                      <tr class="odd gradeX" align="center">
					     <td>{{++$key}}</td>
                        <td>{{$tin->id}}</td>
                            <td><img width="100px" src="uploads/tintuc/{{$tin->Hinh}}"></td>
                        <td>{{$tin->TieuDe}}</td>
                        
                        <td>{!!$tin->TomTat!!}</td>
                       <td>{!!$tin->NoiDung!!}</td>
                        
                        <td>@if($tin->NoiBat == 0)
                            {{'Không'}}
                            @else
                            {{'Có'}}
                        @endif
                        </td>
                        <td>{{$tin->SoLuotXem}}</td>
                        <td>{{@$tin->loaitin->Theloai->Ten}}</td>
                        <td>{{@$tin->Loaitin->Ten}}</td>

                        <td  class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="admin/tintuc/xoa/{{$tin->id}}" onclick="return xacnhan()"> Delete</a></td>
                        <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="admin/tintuc/sua/{{$tin->id}}">Edit</a></td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
      </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
@endsection