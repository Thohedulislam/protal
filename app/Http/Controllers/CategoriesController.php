<?php

namespace App\Http\Controllers;

use App\Models\Categories;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{


    public function index()
    {
        $categories = Categories::all();
        // dd($categories);
         return  view('backend.category',compact('categories'));
    }



    public function create()
    {
        //
    }


    public function add(Request $request)
    {

        $categories = new Categories();
        $categories->name = $request->input('name');
        $categories->save();

        return redirect('/cate')->with('success','Data have been successfully subcate');

    }



    public function show(Categories $categories)
    {

    }


    public function edit($id)
    {
        $categories = Categories::find($id);
         return  view('backend.Editcategory',compact('categories'));

    }


    public function update(Request $request){

        $input = $request->all();
        Categories::find($request->id)->update($input);
        return redirect('/cate')->with('success','Data have been successfully Update');
    }



    public function destroy($id)
    {
       $data = Categories::find($id);
       $data->delete();
       return redirect('/cate')->with('success','Data have been successFully Deleted');
    }
}
