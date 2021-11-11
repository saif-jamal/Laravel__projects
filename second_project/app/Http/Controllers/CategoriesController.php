<?php

namespace App\Http\Controllers;

use App\Modules\Categories;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
    public function index(){
        $Categories= Categories::all();
        return view('Categories.Categories',['categories'=>$Categories]);
    }
}
