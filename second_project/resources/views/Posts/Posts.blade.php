@extends('layouts.app')

@section('content')

    <div class="usersTable p-2">
        <div class="row">
            <div class="col-md-8 my-4">
                <p class="h2 text-white text-center user_head py-2">{{__('posts.POSTVIEW')}}</p>
            </div>
            <div class="col-md-4 my-4 pr-5 sss">
                <span class="text-white fa-2x">{{__('posts.ADDPOSTS')}}</span> <i class="fas fa-plus-square fa-3x  py-2  addUser" title="add Post"></i>
            </div>
        </div>

        <table class="container">
            <thead>
            <tr>
                <th><h1 class="userHeader">ID</h1></th>
                <th><h1 class="userHeader">{{__('posts.IMAGE')}}</h1></th>
                <th><h1 class="userHeader">{{__('posts.POSTNAME')}}</h1></th>
                <th><h1 class="userHeader">{{__('posts.DESCRIPTIONS')}}</h1></th>
                <th><h1 class="userHeader">{{__('posts.STATUS')}}</h1></th>
                <th><h1 class="userHeader">{{__('posts.CREATED_AT')}}</h1></th>
                <th><h1 class="userHeader">{{__('posts.UPDATE_AT')}}</h1></th>
                <th><h1 class="userHeader">{{__('posts.CONTROL')}}</h1></th>


            </tr>
            </thead>
            <tbody>
            @if($posts->count()>0)
                @foreach($posts as $post)
                    <tr>
                        <td class="userbody">{{$post->id}}</td>
                        <td class="userbody"><img class="img-fluid postImage" src="{{$post->image}}" alt=""></td>
                        <td class="userbody">{{$post->postname_en}}</td>
                        <td class="userbody">{{$post->descriptions_en}}</td>
                        <td class="userbody">{{$post->status}}</td>
                        <td class="userbody">{{$post->created_at}}</td>
                        <td class="userbody">{{$post->updated_at}}</td>

                        <td class="conrtollsUser pr-4">
                            <div class="row">
                                <div class="col-md-4">
                                    <form action="{{route('Posts.show')}}" method="post">
                                        @csrf
                                        <input type="hidden" value="{{$post->id}}" name="post_id">
                                       <button type="submit" class="postShow"> <i class="fas fa-eye fa-2x mx-2" title="show details"></i></button>
                                    </form>
                                </div>
                                <div class="col-md-4">
                                    <i class="fas fa-trash fa-2x mx-2" title="Delete post"></i>
                                </div>
                                <div class="col-md-3">
                                    <i class="fas fa-edit fa-2x mx-2" title="edit post"></i>
                                </div>

                            </div>



                        </td>
                    </tr>
                @endforeach
            @endif
            </tbody>
        </table>
    </div>

@endsection
