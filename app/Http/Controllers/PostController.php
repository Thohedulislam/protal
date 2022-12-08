<?php

namespace App\Http\Controllers;

use App\Models\Categories;
use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::paginate(5);
        $categories = Categories::all();
        return view('backend.postlist',compact('posts','categories'));
    }

    //input button
    public function add(){

        $categories = Categories::all();
        return view ('backend.posts',compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        // $posts = Post::all();
        // $categories = Categories::all();
        // return view('backend.posts',compact('categories','posts'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title'=>'required',
            'description'=>'required',
            'image'=>'required',
            'cate_id'=>'required'
        ]);

        $input = $request->all();

        if($request->hasFile('image')){
            $file = $request->file('image');
            $extension = $file->getClientOriginalExtension();
            $filename = time().'-'.rand() . '.' .$extension;
            $file->move('uploads/demo/', $filename);
            $input['image'] = $filename;
        }else{
            unset($input['image']);
        }

        Post::create($input);

        if($input){
            return redirect('/post/list')->with('success','Data have been insert');
        }
        else{
            return back()->with('fail;','Somthing went to be wrong');
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    //    $posts = Post::find($id);
    //    return view ('backend.postlist',compact('posts'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       $data = Post::find($id);
       $data->delete();

       return redirect('/post/list')->with('success','Data have been successFully Deleted');
    }
}
