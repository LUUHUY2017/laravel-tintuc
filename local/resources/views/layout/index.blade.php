<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    {{--       <meta http-equiv="refresh" content="15" >   --}}{{-- lam moi trang --}}
    <title>Báo Việt Nam | @yield('title')</title>
    <base href="{{asset('')}}">
    <!-- Bootstrap Core CSS -->
    <link href="local/public/font/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" href="uploads/tintuc/01.jpg" alt="báo Việt" with=50px height="50px">
    <link href="{{url('local/resources/assets/css/login.css')}}" rel="stylesheet" />
    <link href="local/public/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
    <div id="back-top"><i class="fa fa-arrow-up"></i> </div>
    <style type="text/css">
    #back-top{
        border-radius: 5px;
        background: pink;
        color: black;
        position: fixed;
        cursor: pointer;
        bottom: 25px;
        padding:10px;
        display: none;
        right: 15px;
        z-index: 1000;
        opacity:0.5;
    }
</style>
<!-- jQuery -->
<script src="local/public/font/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="local/public/font/js/bootstrap.min.js"></script>
<script src="local/public/font/js/my.js"></script> 
{{-- <script src="https://uhchat.net/code.php?f=f1ac71"></script>  nut chat mobie --}}
@yield('script')
<script type="text/javascript">
    $(document).ready(function()
    {
        $(window).scroll(function()
        {
            if ( $(this).scrollTop() > 390)
                  { $('#back-top').fadeIn(); }
            else 
                 { $('#back-top').fadeOut();  }
        });
      $('#back-top').click(function() {
            $('body,html').animate({
                scrollTop: 0
}, 500); // 0.05s thi llen top
            return false;
        });
    });

</script>
<script type="text/javascript">
    $(document).ready(function () {  
//
$(window).scroll(function()
{
    if( $(this).scrollTop() > 390)
    {
        $("#sidebar").addClass("fix-box"); //class tạo cho no khi croll
        } 
        else {
             $("#sidebar").removeClass("fix-box");
             } 
    });

});


//     $(window).bind("scroll", function(e) {
//         var top = $(window).scrollTop();
//       if (top> 390) { //Khoảng cách đã đo được
//         $("#sidebar").addClass("fix-box"); //class tạo cho no khi croll
//       } else {
//         $("#sidebar").removeClass("fix-box");
//       } 

//     });
// });
</script>
</body>

</html>
