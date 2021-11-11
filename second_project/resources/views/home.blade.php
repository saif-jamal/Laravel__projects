@extends('layouts.app')



@section('content')
<div class="container tables_view">
    <div class="row justify-content-center">
        <div class="col-md-3 my-3">
            <div class="card text-center p-2">
                 <i class="fas fa-users fa-3x text-info py-3" title="Users"></i>
                 <p class="fa-1x text-white text-center py-3" >{{$users->count()}}</p>
                <a href="{{route('Users')}}"> <button class="btn btn-light">{{__('lang.SHOW')}}</button></a>
            </div>
        </div>

        <div class="col-md-3 my-3">
            <div class="card  text-center p-2">
                <i class="fas fa-address-card fa-3x text-danger py-3" title="Posts"></i>
                <p class="fa-1x text-white text-center py-3">{{$posts->count()}}</p>
                <a href="{{route('Posts')}}"> <button class="btn btn-light">{{__('lang.SHOW')}}</button></a>
            </div>
        </div>

        <div class="col-md-3 my-3">
            <div class="card  text-center p-2">
                <i class="fas fa-shapes fa-3x py-3 text-warning" title="Categories"></i>
                <p class="fa-1x text-white text-center py-3">{{$categories->count()}}</p>
                <a href="{{route('Categories')}}"> <button class="btn btn-light">{{__('lang.SHOW')}}</button></a>
            </div>
        </div>

        <div class="col-md-3 my-3">
            <div class="card  text-center p-2">
                <i class="fas fa-comments fa-3x py-3 text-success" title="COmments"></i>
                <p class="fa-1x text-white text-center py-3">{{$comments->count()}}</p>
                <a href="{{route('Comments')}}"> <button class="btn btn-light">{{__('lang.SHOW')}}</button></a>
            </div>
        </div>

    </div>
</div>
@endsection
