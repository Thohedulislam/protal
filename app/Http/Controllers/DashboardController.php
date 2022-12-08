<?php

namespace App\Http\Controllers;

use App\Models\Categories;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(){
        $categories = Categories::count();
        $post = Post::count();
        $user = User::count();
        return view('dashboard',compact('categories','post','user'));
    }
}
