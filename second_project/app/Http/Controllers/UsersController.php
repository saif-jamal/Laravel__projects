<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class UsersController extends Controller
{
    public function index(){
        $users=User::all();
        return view('Users.Users',['users'=>$users]);
    }
}
