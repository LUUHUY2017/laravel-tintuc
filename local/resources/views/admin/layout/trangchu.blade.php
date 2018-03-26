 @extends('admin.layout.index')
  @section('title', 'Trang Chủ')
@section('content')
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Thể Loại
                    <small>Danh Sách</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
         
            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                <thead class="alert-success">
                    <tr align="center">
                        <th>ID</th>
                        <th>Tên</th>
                        <th>Tên không dấu</th>
                        <th>Delete</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody class="alert-info">
                  
                    <tr class="odd gradeX" align="center">
                        <td>{</td>
                        <td>{}}</td>
                        <td>{</td>
                        
                        <td class="center"><i class="fa fa-trash-o  fa-fw"></i><a href=""> Delete</a></td>
                        <td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="a">Edit</a></td>
                    </tr>
          
                </tbody>
            </table>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
    @endsection