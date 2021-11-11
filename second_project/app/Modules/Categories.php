<?php

namespace App\Modules;

use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
    protected $fillable=[
        'title_en',
        'title_ar',
        'descriptions_en',
        'descriptions_ar',
        'status'
    ];
}
