<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class loaitin extends Model
{
    //
    protected $table="loaitin";
    public function theloai(){
    return $this->belongsTo('App\Theloai','idTheLoai','id');
    }
    public function tintuc(){
    return $this->hasMany('App\Tin','idLoaiTin','id');
    }
}
