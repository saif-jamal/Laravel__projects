@extends('layouts.app')

@section('content')

    <div class="usersTable p-2">
        <div class="row">
            <div class="col-md-8 my-4">
                <p class="h2 text-white text-center user_head py-2">{{__('categories.CATEGORIESVIEW')}}</p>
            </div>
            <div class="col-md-4 my-4 pr-5 sss">
                <span class="text-white fa-2x">{{__('categories.ADDCATEGORY')}}</span> <i class="fas fa-plus-square fa-3x  py-2  addUser" title="add Category"></i>
            </div>
        </div>

        <table class="container">
            <thead>
            <tr>
                <th><h1 class="userHeader">ID</h1></th>
                <th><h1 class="userHeader">{{__('categories.TITLE')}}</h1></th>
                <th><h1 class="userHeader">{{__('categories.DESCRIPTIONS')}}</h1></th>
                <th><h1 class="userHeader">{{__('categories.STATUS')}}</h1></th>
                <th><h1 class="userHeader">{{__('categories.CREATED_AT')}}</h1></th>
                <th><h1 class="userHeader">{{__('categories.UPDATE_AT')}}</h1></th>
                <th><h1 class="userHeader">{{__('categories.CONTROL')}}</h1></th>

            </tr>
            </thead>
            <tbody>
            @if($categories->count()>0)
                @foreach($categories as $Category)
                    <tr>
                        <td class="userbody">{{$Category->id}}</td>
                        <td class="userbody">{{$Category->title_en}}</td>
                        <td class="userbody">{{$Category->descriptions_en}}</td>
                        <td class="userbody">{{$Category->status}}</td>
                        <td class="userbody">{{$Category->created_at}}</td>
                        <td class="userbody">{{$Category->updated_at}}</td>
                        <td class="conrtollsUser pr-4">
                            <div class="row">
                                <div class="col-md-4">
                                    <i class="fas fa-eye fa-2x mx-2" title="show details"></i>
                                </div>
                                <div class="col-md-4">
                                    <i class="fas fa-trash fa-2x mx-2" title="Delete Category"></i>
                                </div>
                                <div class="col-md-3">
                                    <i class="fas fa-edit fa-2x mx-2" title="edit Category"></i>
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
