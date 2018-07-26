<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Khóa Học Lập Trình Laravel Framework 5.x Tại Khoa Phạm">
    <meta name="author" content="">

    <title>Admin - Khoa Phạm</title>
     <base href="{{asset('')}}">

    <!-- Bootstrap Core CSS -->
    <link href="local/public/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="local/public/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="local/public/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="local/public/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>
    <style type="text/css">
        body{
            background-image: url('uploads/slide/1.jpg');
            background-attachment: fixed;
            background-position: center;
            background-size: cover;
        }
        .login-panel{
            position: absolute;
            top: 100px;
            left: 50%;
            transform: translateX(-50%);
            width: 350px;
                background: rgba(0, 0, 0, 0.6);
            opacity: 0.8;
        }
        .panel-title{
            background: transparent;
            text-align: center;
            border-color: gray;
            padding-bottom: 26px;
            padding-top: 7px;
            text-transform: uppercase;
            font-weight: bold;
        }
        .panel{
          box-shadow: 0 1px 5px 0 gray;
        }
        .panel-default>.panel-heading, .panel-body input {
           color: white;
           background-color: transparent;
           border-color: #ddd;
           
           border: unset;
           border-radius: unset;
                }
        .panel-body input{
            outline: unset;
            border: unset;
            border-bottom: 1px solid red;
        }
         .panel-body input:focus{
            outline: unset;
            border: unset;
            border-bottom: 1px solid red;
            box-shadow: unset;
        }
         .panel-body input:focus{
            border-bottom: translateX(-5px;)
         }
    </style>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Đăng nhập</h3>
                    </div>
                    <div class="panel-body">
                @if(count($errors)>0)
                <div class="alert alert-danger">
                    @foreach($errors->all() as $err)
                    {{$err}}<br>
                    @endforeach
                </div>
                @endif
                     @if(session('thongbao'))
                     <div class="alert alert-danger"> 
					 {{session('thongbao')}}
					 </div>
                     @endif
                        <form role="form" action="admin/dangnhap" method="POST">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="E-mail" name="email" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <button type="submit" class="btn btn-lg btn-success btn-block">Login</button>
                            </fieldset>
                            @csrf
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="local/public/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="local/public/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="local/public/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="local/public/dist/js/sb-admin-2.js"></script>

</body>

</html>
