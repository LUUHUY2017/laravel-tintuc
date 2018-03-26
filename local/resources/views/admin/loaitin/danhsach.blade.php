@extends('admin.layout.index')
@section('title', 'Loại Tin - Danh Sách')
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Loại Tin
                    <small>Dánh Sách</small>
                </h1>
            </div>
            <div class="row">
            <div class="col-lg-12">
                @if(session('thongbao'))
            <div class="alert alert-warning">
                {{session('thongbao')}}
            </div>
            @endif
            </div>
            </div>
            
            <!-- /.col-lg-12 -->
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead class="alert alert-success">
                    <tr align="center"  >
                        <th>ID</th>
                        <th>Tên Loại Tin</th>
                        <th>Tên Không Dấu</th>
                        <th>Thể Loại</th>
                        <th>Delete</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($lt as $ltin)
                    <tr class="odd gradeX" align="center">
                        <td>{{$ltin->id}}</td>
                        <td>{{$ltin->Ten}}</td>
                        <td>{{$ltin->TenKhongDau}}</td>
                        <td>
                            @if(@$ltin->Theloai->Ten =='')
                            <p style="color:red">    {{'Đang cập nhật'}}</p>
                            @else
                            {{@$ltin->Theloai->Ten}}
                            @endif
                        </td>
                        <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href="admin/loaitin/xoa/{{$ltin->id}}"> Delete</a></td>
                        <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="admin/loaitin/sua/{{$ltin->id}}">Edit</a></td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /#page-wrapper -->
@endsection