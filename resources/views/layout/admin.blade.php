<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset('public/assets/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/css/admin_sidebar.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/css/admin.css')}}">
    <title>Document</title>
</head>
<body>
<div id="viewport">
    <!-- Sidebar -->
    <div id="sidebar">
        <header>
            <a href="{{ url()->to('/') }}">My App</a>
        </header>
        <ul class="nav">
            <li>
                <a href="{{ url()->route('admin_game') }}">
                    <i class="zmdi zmdi-view-dashboard"></i> Games
                </a>
            </li>
            <li>
                <a href="{{ url()->route('admin_genre') }}">
                    <i class="zmdi zmdi-link"></i> Genres
                </a>
            </li>
            <li>
                <a href="{{ url()->route('admin_user') }}">
                    <i class="zmdi zmdi-widgets"></i> Users
                </a>
            </li>
            <li>
                <a href="{{ url()->route('admin_background') }}">
                    <i class="zmdi zmdi-calendar"></i> Backgrounds
                </a>
            </li>
        </ul>
    </div>
    <!-- Content -->
    <div id="content">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#"><i class="zmdi zmdi-notifications text-danger"></i>
                        </a>
                    </li>
                    <li><a href="{{ url()->previous() }}">Back</a></li>
                </ul>
            </div>
        </nav>
        <div class="container-fluid">
            @yield('content')

        </div>

@include('layout.footer')
