@php use App\Models\Background; @endphp
    <!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset('public/assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/css/style.css')}}">

    <style>
        body {
            background-image: url('{{ Background::inRandomOrder()->limit(1)->first()->image_url }}');
        }

    </style>

    <title>Document</title>
</head>
<body>


<div class="container wrapper">

    <nav class="navbar navbar-expand-lg sticky-top navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand d-flex align-items-center" href="/" >
                <img src="{{ asset('public/assets/img/logo.svg') }}" style="height: 40px; margin-right: 5px;">
                GameStock
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                    aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link {% if page == 'home' %} disabled {% endif %}" aria-current="page" href="/">Home</a>
                    </li>

                    @guest

                        <li class="nav-item">
                            <a class="nav-link" href="/login">Log In</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/registration">Register</a>
                        </li>

                    @endguest

                    <li class="nav-item">
                        <a class="nav-link" href="/randomgame">Случайная игра</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            Жанры
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark">

                            @foreach(\App\Models\Genre::all() as $key => $genre)
                                <li><a class="dropdown-item"
                                       href="{{ route('genre', $genre->id) }}">{{ $genre->name }}</a></li>

                            @endforeach

                        </ul>
                    </li>

                    @auth

                        <li class="nav-item">
                            <a class="nav-link" href="/profile">Профиль</a>
                        </li>

                    @endauth

                    <li class="nav-item">
                        <a class="nav-link" href="{{ url()->previous() }}">Назад</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
    <div class="contaier main-block">

