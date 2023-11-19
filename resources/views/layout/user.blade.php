@php use App\Models\Background @endphp

    <!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset('public/assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('public/assets/css/profile.css')}}">

    <style>
        body {
            background-image: url('{{ Background::inRandomOrder()->limit(1)->first()->image_url }}');
        }

    </style>

    <title>Document</title>
</head>
<body style="display: flex !important;
            justify-content: center;
            align-items: center;">


<div class="form-block">
    <div class="container-fluid h-100 d-flex flex-column justify-content-evenly">

        @yield('content')


    </div>
</div>

@include('layout.footer')
