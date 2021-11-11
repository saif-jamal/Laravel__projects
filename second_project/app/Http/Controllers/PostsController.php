<?php

namespace App\Http\Controllers;

use App\Modules\Posts;
use Illuminate\Http\Request;

class PostsController extends Controller
{
    public function index(){
        $posts=Posts::all();
        return view('Posts.Posts',['posts'=>$posts]);
    }

    public function show(Request $request){
        $post=Posts::findorFail($request->post_id);
        return view('Posts.show',['post'=>$post]);
    }

}
