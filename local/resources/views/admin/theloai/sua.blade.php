@extends('admin.layout.index')
 @section('title', 'Thể loại - Sửa')
@section('content')
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Thể loại
                    <small>{{ $loaithe->Ten}}</small>
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
                <form action="admin/theloai/sua/{{$loaithe->id}}" method="POST">

                    <div class="form-group">        
                        <label>Tên thể loại</label>
                        <input class="form-control" name="Ten" placeholder="Điền tên thể loại" value="{{$loaithe->Ten}}" />
                    </div>
                  
                    <button type="submit" class="btn btn-default">Sửa</button>
                    <button type="reset" class="btn btn-default">làm Mới</button>
                {!! csrf_field() !!}
                    <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
        @endsection