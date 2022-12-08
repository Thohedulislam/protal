<?php

namespace App\Http\Controllers;

use App\Models\Categories;
use App\Models\Post;
use Illuminate\Http\Request;

class FontendController extends Controller
{
    public function index(){
        $cate = Categories::latest()->get(['id','name']);
        $posts = Post::latest()->get(['id','title','description','image','cate_id','created_at']);
        $data =Post::latest()->get();
        return view('fontend.home',compact('cate','posts','data'));
    }


    public function viewPost($id)
    {
        $cate = Categories::latest()->get(['id','name']);
        $post = Post::find($id);
        return view('fontend.post_single',compact('post','cate'));
    }

    public function viewCatePost($id)
    {
        $cate = Categories::find($id);
        $post = Post::where('cate_id', $cate->id)->get();
        return view('fontend.cate_view',compact('post','cate'));
    }

    public function viewallCate(){
        $cate = Categories::latest()->get(['id','name']);
        $post=Post::latest()->get(['id','title','description','image','cate_id','created_at']);
        return view('fontend.cateall_view',compact('cate','post'));
    }
    // public function cateWise($id){
    //     if(Categories::where('id',$id)->exists()){
    //         $category = Categories::where('id',$id)->first();
    //         $posts = Post::where('cate_id',$category->id)->get();
    //         return view('fontend.cate_view',compact('category','posts'));
    //     }
    //     else{
    //         return redirect('/')->with('id',"does not exists");
    //     }
    //     // $cate = Categories:: find($id);
    //     // return view('fontend.cate_view',compact('cate'));
    // }

}
