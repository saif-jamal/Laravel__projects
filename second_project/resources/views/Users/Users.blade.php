@extends('layouts.app')

@section('content')

    <div class="usersTable p-2">
        <div class="row">
            <div class="col-md-8 my-4">
                <p class="h2 text-white text-center user_head py-2">{{__('users.USERSVIEW')}}</p>
            </div>
            <div class="col-md-4 my-4 pr-5 sss">
                <span class="text-white fa-2x">{{__('users.ADDUSER')}}</span> <i class="fas fa-plus-square fa-3x  py-2  addUser" title="add user"></i>
            </div>
        </div>

        <table class="container">
            <thead>
            <tr>
                <th><h1 class="userHeader">ID</h1></th>
                <th><h1 class="userHeader">{{__('users.USERNAME')}}</h1></th>
                <th><h1 class="userHeader">{{__('users.EMAIL')}}</h1></th>
                <th><h1 class="userHeader">{{__('users.STATUS')}}</h1></th>
                <th><h1 class="userHeader">{{__('users.ROLE')}}</h1></th>
                <th><h1 class="userHeader">{{__('users.CREATED_AT')}}</h1></th>
                <th><h1 class="userHeader">{{__('users.UPDATE_AT')}}</h1></th>
                <th><h1 class="userHeader">{{__('users.CONTROL')}}</h1></th>

            </tr>
            </thead>
            <tbody>
            @if($users->count()>0)
                @foreach($users as $user)
                    <tr>
                        <td class="userbody">{{$user->id}}</td>
                        <td class="userbody">{{$user->name}}</td>
                        <td class="userbody">{{$user->email}}</td>
                        <td class="userbody">{{$user->status}}</td>
                        <td class="userbody">{{$user->role}}</td>
                        <td class="userbody">{{$user->created_at}}</td>
                        <td class="userbody">{{$user->updated_at}}</td>

                        <td class="conrtollsUser pr-4">
                            <div class="row">
                                <div class="col-md-4">
                                    <i class="fas fa-eye fa-2x mx-2" title="show details"></i>
                                </div>
                                <div class="col-md-4">
                                    <i class="fas fa-trash fa-2x mx-2" title="Delete user"></i>
                                </div>
                                <div class="col-md-3">
                                    <i class="fas fa-edit fa-2x mx-2" title="edit user"></i>
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
