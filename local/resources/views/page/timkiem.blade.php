@extends('layout.index')
@section('title', 'Tìm Kiếm')
@section('content')


<!-- Page Content -->

<div class="container">
    <div class="row">
        @include('layout.menu')
        <div class="col-md-9 ">
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color:#337AB7; color:white;">
                    <h4><b>
                        Tìm Kiếm :{{$tukhoa}}
                    </b></h4>
                </div>
				@if(count($tintuc)== 0)   =>>   {$tintuc->count()== 0} or  {count($tintuc)== 0}  
				va kieu nay elseif(count($tintuc)) cung duoc elseif(count($tintuc) != 0) neu co bai
				<p>Không có tin tức nào được tìm thấy</p>
					@elseif(count($tintuc) != 0)
					Tìm Kiếm thấy:{{count($tintuc)}} tin tức ________________{$tintuc->count()} or {count($tintuc)}
					@endif
                @foreach($tintuc as $tt)		
                <div class="row-item row">
                    <div class="col-md-3">

                        <a href="tintuc/{{$tt->id}}/{{$tt->TieuDeKhongDau}}.html">
                            <br>
                            <img width="200px" height="200px" class="img-responsive" src="uploads/tintuc/{{$tt->Hinh}}" alt="">
                        </a>
                    </div>

                    <div class="col-md-9">
                        <h3>{{$tt->TieuDe}}</h3>
                        <p>{{$tt->TomTat}}</p>
                        <a class="btn btn-primary" href="tintuc/{{$tt->id}}/{{$tt->TieuDeKhongDau}}.html">Xem tiếp <span class="glyphicon glyphicon-chevron-right"></span></a>
                    </div>
                    <div class="break"></div>
                </div>
                @endforeach

                <!-- Pagination -->
                <div class="row text-center">
                    <div class="col-lg-12">
                        {{ $tintuc->links() }}
                    </div>
                </div>
                <!-- /.row -->

            </div>
        </div> 

    </div>

</div>
<!-- end Page Content -->
@endsection