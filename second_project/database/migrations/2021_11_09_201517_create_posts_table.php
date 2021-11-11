<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePostsTable extends Migration
{

    public function up()
    {
        Schema::create('posts', function (Blueprint $table) {
            $table->id();
            $table->string('postname_en');
            $table->string('postname_ar');
            $table->text('descriptions_en');
            $table->text('descriptions_ar');
            $table->text('image');
            $table->enum('status',['active','block']);
            $table->timestamps();
        });
    }


    public function down()
    {
        Schema::dropIfExists('posts');
    }
}
