<?php

namespace App\Http\Controllers;

use App\Modules\Comments;
use Illuminate\Http\Request;

class CommentsController extends Controller
{
    public function index(){
        $comments=Comments::all();
        return view('Comments.Comments',["comments"=>$comments]);
    }
}
