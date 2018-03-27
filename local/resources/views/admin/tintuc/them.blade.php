@extends('admin.layout.index')
@section('title','Tin Tức - Thêm Tin Tức')
@section('content')
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Tin Tức
                    <small>Thêm</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-7" style="padding-bottom:120px">
                  @if(count($errors)>0)
                <div class="alert alert-danger">
                    @foreach($errors->all() as $err)
                    {{$err}}<br>
                    @endforeach
                </div>
                @endif
                @if(session('thongbao'))
                <div class="alert alert-success">
                    {{session('thongbao')}} 
                </div>
                @endif
                       @if(session('loi'))
                <div class="alert alert-success">
                    {{session('loi')}} 
                </div>
                @endif
                <form action="admin/tintuc/them" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Thể Loại</label>
                        <select class="form-control" id="theloai" name="Theloai">
                            @foreach($theloai as $tl)
                            <option value="{{$tl->id}}">{{$tl->Ten}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Loại Tin</label>
                        <select class="form-control" id="loaitin" name="LoaiTin">
                            @foreach($loaitin as $lt)
                            <option value="{{$lt->id}}">{{$lt->Ten}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Tiêu Đề</label>
                        <input class="form-control" name="TieuDe" placeholder="Điền tên tiêu đề" />
                    </div>
                    <div class="form-group">
                        <label>Tóm Tắt</label>
                        <textarea id="TomTat" class="form-control ckeditor" name="TomTat" rows="2"></textarea>
              
                    </div>
                    <div class="form-group">
                        <label>Nội Dung</label>
                        <textarea id="NoiDung" class="form-control ckeditor" name="NoiDung"  rows="5"></textarea>
                
                    </div>
                    <div class="form-group">
                        <label>Hình Ảnh</label>
                        <input type="file" name="Hinh" class="form-control>
                        <div class="form-group">
                            <label>Nổi Bật</label>
                            <label class="radio-inline">
                                <input name="NoiBat" value="0" checked="" type="radio">Không
                            </label>
                            <label class="radio-inline">
                                <input name="NoiBat" value="1" type="radio">Có
                            </label>
                        </div>
                        <button type="submit" class="btn btn-default">Thêm</button>
                        <button type="reset" class="btn btn-default">Làm mới</button>
                        @csrf
                        <form>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /#page-wrapper -->
            @endsection
            @section('script')
            <script type="text/javascript">
                $(document).ready(function(){
                    $("#theloai").change(function(){
                        var idTheLoai = $(this).val();

                        $.get("admin/ajax/loaitin/"+idTheLoai,function(data){
                            $("#loaitin").html(data);
                        });
                    });
                });

            </script>
            @endsection