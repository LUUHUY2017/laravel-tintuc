<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
        <meta http-equiv="refresh" content="15" >  {{-- lam moi trang --}}
    <title>Báo Việt Nam | @yield('title')</title>
	<base href="{{asset('')}}">
    <!-- Bootstrap Core CSS -->
    <link href="local/public/font/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" href="uploads/tintuc/01.jpg" alt="báo Việt" with=50px height="50px">
    <link href="{{url('local/resources/assets/css/login.css')}}" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="local/public/font/css/shop-homepage.css" rel="stylesheet">
    <link href="local/public/font/css/my.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	@include('layout.header')
	@yield('content')
	@include('layout.footer')
    <!-- jQuery -->
    <script src="local/public/font/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="local/public/font/js/bootstrap.min.js"></script>
    <script src="local/public/font/js/my.js"></script> 
        {{-- <script src="https://uhchat.net/code.php?f=f1ac71"></script>  nut chat mobie --}}
	@yield('script')
</body>

</html>
