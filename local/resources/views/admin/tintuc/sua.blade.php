@extends('admin.layout.index')
@section('title','Tin Tức - Sửa Tin Tức')
@section('content')
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class=" col-lg-12">
                <h1 class="page-header">Tin Tức
                    <small>{{$tin->TieuDe}}</small>
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

                <form class="form-horizontal"  action="admin/tintuc/sua/{{$tin->id}}" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label class="control-label ">Thể Loại</label>
                        <select class="form-control" id="theloai" name="Theloai">
                            @foreach($theloai as $tl)
                            <option 
                            @if(@$tin->loaitin->theloai->id == $tl->id)
                            {{"selected"}}
                            @endif
                            value="{{$tl->id}}">{{$tl->Ten}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Loại Tin</label>
                        <select class="form-control" id="loaitin" name="LoaiTin">
                        @foreach($loaitin as $lt)
                            <option 
                         @if(@$tin->loaitin->id == $lt->id)
                            {{"selected"}}
                        @endif
                              value="{{$lt->id}}">
                            {{$lt->Ten}} </option>
                        @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Tiêu Đề</label>
                        <input class="form-control" name="TieuDe" placeholder="Điền tên tiêu đề" value="{{$tin->TieuDe}}"/>
                    </div>
                    <div class="form-group">
                        <label class="control-label ">Tóm Tắt</label>
                        <textarea id="demo" class="form-control ckeditor" name="TomTat" rows="3" >
                            {{$tin->TomTat}}
                        </textarea>
                  
                    </div>
                    <div class="form-group">
                        <label class="control-label ">Nội Dung</label>
                        <textarea id="demo" class="form-control ckeditor" name="NoiDung" >
                            {{$tin->NoiDung}}        
                        </textarea>
   
                    </div>
                    <div class="form-group">
                        <label class="control-label ">Hình Ảnh</label>
                        <p>  <img width="400px;" src="uploads/tintuc/{{$tin->Hinh}}" ></p>
                        <input type="file" name="Hinh" class="form-control" />

                    </div>
                    <div class="form-group">
                        <label class="control-label ">Nổi Bật</label>
                        <label class="radio-inline">
                            <input name="NoiBat" value="0" 
							@if($tin->NoiBat==0) 
                            {{"checked"}}
                            @endif type="radio">
							Không
                        </label>

                        <label class="radio-inline">
                            <input name="NoiBat" value="1" 
							@if($tin->NoiBat==1) 
                            {{"checked"}}
                            @endif type="radio">
							Có
                        </label>
                    </div>
                    <button type="submit" class="btn btn-default">Sửa</button>
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
        <script type="text/javascript">  // de khi chonj theerlaoij sex ra loaj tin cuar nos
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