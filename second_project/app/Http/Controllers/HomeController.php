<?php

namespace App\Http\Controllers;

use App\Modules\Categories;
use App\Modules\Comments;
use App\Modules\Posts;
use App\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $users=User::all();
        $posts=Posts::all();
        $categories=Categories::all();
        $comments=Comments::all();
        return view('home',['users'=>$users,'posts'=>$posts,'categories'=>$categories,'comments'=>$comments]);
    }
}
