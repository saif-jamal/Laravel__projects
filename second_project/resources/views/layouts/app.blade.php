<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('js/Posts_show.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!--fontawsome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!--bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">

</head>
<body>
    <div id="app">



        <nav class="navbar navbar-expand-md navbar-dark bg-dark shadow-sm py-4">
            <div class="container-fluid">
                <a class="navbar-brand" href="{{ route('home')}}">
                    {{__('lang.DASHBOARD')}}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('Main') }}">{{__('lang.MAINPAGE')}}</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('Users') }}">{{__('lang.USERSPAGE')}}</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('Posts') }}">{{__('lang.POSTSPAGE')}}</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('Categories') }}">{{__('lang.CATEGORIESPAGE')}}</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('Comments') }}">{{__('lang.COMMENTSPAGE')}}</a>
                        </li>

                         <li class="nav-item">
                             <div class="dropdown">
                                 <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
                                     {{__('lang.LANGUAGE')}}
                                 </button>
                                 <ul class="dropdown-menu dropdown-menu-dark bg-dark" aria-labelledby="dropdownMenuButton2">

                                     @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                                         <li>
                                             <a class="dropdown-item " rel="alternate" hreflang="{{ $localeCode }}" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">
                                                 {{ $properties['native'] }}
                                             </a>
                                         </li>
                                     @endforeach
                                 </ul>
                             </div>
                         </li>




                    </ul>



                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <header class="header" id="header">
            <ul>
                <li class="cor-1"></li>
                <li class="cor-2"></li>
                <li class="cor-3"></li>
                <li class="cor-4"></li>
                <li class="cor-5"></li>
            </ul>
        </header>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>
</html>
