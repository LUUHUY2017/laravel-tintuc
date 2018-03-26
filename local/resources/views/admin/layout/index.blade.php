<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Khóa Học Lập Trình Laravel Framework 5.x Tại Khoa Phạm">
    <meta name="author" content="">
    
    <title>Admin | @yield('title')</title>
    <base href="{{asset('')}}">
    <!-- Bootstrap Core CSS -->
    <link href="local/public/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="local/public/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="local/public/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="local/public/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- DataTables CSS -->
    <link href="local/public/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="local/public/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
    
</head>
<body>

    <div id="wrapper">

     @include('admin.layout.header')

     @yield('content')

 </div>
 <!-- /#wrapper -->

 <!-- jQuery -->
 <script src="local/public/bower_components/jquery/dist/jquery.min.js"></script>

 <!-- Bootstrap Core JavaScript -->
 <script src="local/public/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

 <!-- Metis Menu Plugin JavaScript -->
 <script src="local/public/bower_components/metisMenu/dist/metisMenu.min.js"></script>

 <!-- Custom Theme JavaScript -->
 <script src="local/public/dist/js/sb-admin-2.js"></script>

 <!-- DataTables JavaScript -->
 <script src="local/public/bower_components/DataTables/media/js/jquery.dataTables.min.js"></script>
 <script src="local/public/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="local/public/ckeditor/ckeditor.js" ></script>

 <!-- Page-Level Demo Scripts - Tables - Use for reference -->
 <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
   
</script>
           <script>  
            CKEDITOR.replace('demo',{
        filebrowserBrowseUrl: 'local/public/ckfinder/ckfinder.html',
        filebrowserImageBrowseUrl: 'local/public/ckfinder/ckfinder.html?type=Images',
        filebrowserFlashBrowseUrl: 'local/public/ckfinder/ckfinder.html?type=Flash',
        filebrowserUploadUrl: 'local/public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
        filebrowserImageUploadUrl: 'local/public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
        filebrowserFlashUploadUrl: 'local/public/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
    } );

            </script>
@yield('script')

</body>

</html>
