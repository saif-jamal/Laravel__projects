<?php

namespace App\Modules;

use Illuminate\Database\Eloquent\Model;

class Posts extends Model
{
    protected $fillable=[
        'postname_en',
        'postname_ar',
        'descriptions_en',
        'descriptions_ar',
        'image',
        'status'
    ];
}
