<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use  App\Models\Categories;


class Post extends Model
{
    use HasFactory;

    protected $tabel = 'posts';

    protected $fillable = ['id','title','description','image','cate_id'];

    public function cate(){

        return $this->belongsTo(Categories::class,'cate_id','id');
    }


    // public static function cateProductCount($cat_id){
    //     $catCount=Post::where('cate_id',$cat_id)->count();
    //     return $catCount;
    // }
}
