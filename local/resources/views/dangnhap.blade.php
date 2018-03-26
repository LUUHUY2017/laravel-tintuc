@extends('layout.index')
@section('title','Đăng Nhập')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-4">
            <h1 style="color: #5D0E0E"; class="text-center login-title">Đăng Nhập</h1>
            <div class="account-wall">
                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                    alt="">
          <h3>{!!$error or ""!!}</h3>
          {{-- {{$error or ""}} k cho nhum html --}}
                <form class="form-signin" action="{{route('loginpost')}}" method="post"> {{-- {{url('login')}} --}}
                <input type="email" class="form-control" placeholder="Email" name="email" required autofocus>
                <input type="password" class="form-control" placeholder="Password" name="password"  >
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                   Đăng Nhập</button>
           {{--<input class="btn btn-lg btn-primary btn-block" type="submit"
           value="Đăng Nhập"> tao chu thich --}} 
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                   Nhớ
                </label>
                <a href="#" class="pull-right need-help">Giúp đỡ? </a><span class="clearfix"></span>
        @csrf
                </form>
            </div>
            <a href="#" class="text-center new-account">Tạo tài khoản</a>
        </div>
    </div>
</div>
@endsection