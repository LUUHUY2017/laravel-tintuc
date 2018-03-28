<div class="col-md-3">
    <div id="sidebar">
    <ul class="list-group" id="menu">
        <li href="#" class="list-group-item menu1 active">
        <h5 style="text-align: center; font-weight: bold; ">THỂ LOẠI TIN TỨC</h5>
        </li>
        @foreach($theloai as $tl)   
        @if(count($tl->loaitin)>0) {{-- neu dem loaitin co the loai >0    @if(count($tl->tintuc)>0) nnghia la the loai nay co tin tuc lon hon 0 thi lay ra --}}
                        <li style="font-weight: bold" href="#" class="list-group-item menu1">
                            {{$tl->Ten}}
                        </li>

                    <ul>
                        @foreach($tl->loaitin as $lt)      {{-- tuong tu nhu tren --}}
                                      <li class="list-group-item">
                                        <a href="loaitin/{{$lt->id}}/{{$lt->TenKhongDau}}.html">{{$lt->Ten}}</a>
                                    </li>
                                  
                                    @endforeach
                    </ul>
         @endif
        @endforeach

    </ul>
</div>
</div>
