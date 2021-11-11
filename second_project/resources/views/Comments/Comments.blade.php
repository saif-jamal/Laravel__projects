@extends('layouts.app')

@section('content')

    <div class="usersTable p-2">
        <div class="row">
            <div class="col-md-8 my-4">
                <p class="h2 text-white text-center user_head py-2">{{__('comments.COMMENTSVIEW')}}</p>
            </div>
        </div>

        <table class="container">
            <thead>
            <tr class="px-4">
                <th><h1 class="userHeader">ID</h1></th>
                <th><h1 class="userHeader">{{__('comments.COMMENTS')}}</h1></th>
                <th><h1 class="userHeader">{{__('comments.STATUS')}}</h1></th>
                <th><h1 class="userHeader">{{__('comments.CREATED_AT')}}</h1></th>
                <th><h1 class="userHeader">{{__('comments.UPDATE_AT')}}</h1></th>
                <th><h1 class="userHeader">{{__('comments.CONTROL')}}</h1></th>

            </tr>
            </thead>
            <tbody>
            @if($comments->count()>0)
                @foreach($comments as $comment)
                    <tr>
                        <td class="userbody">{{$comment->id}}</td>
                        <td class="userbody">{{$comment->comment}}</td>
                        <td class="userbody">{{$comment->status}}</td>
                        <td class="userbody">{{$comment->created_at}}</td>
                        <td class="userbody">{{$comment->update_at}}</td>

                        <td class="conrtollsUser px-3">
                            <i class="fas fa-trash fa-2x mx-2" title="Delete comment"></i>
                        </td>


                    </tr>
                @endforeach
            @endif
            </tbody>
        </table>
    </div>

@endsection
