<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tin extends Model
{
    //
    protected $table="tintuc";
    public function loaitin(){
    return $this->belongsTo('App\Loaitin','idLoaiTin','id');

    }
    // public function comment(){
    // 	$this->hasMany('App\Comment','idTinTuc','id');
    // }
}