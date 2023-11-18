@php use Illuminate\Support\Facades\Auth;use Illuminate\Support\Facades\URL; @endphp
@extends('layout.app')

@section('content')
    {{ Auth::user() }}

    <a href="{{ URL::to('/logout') }}">Logout</a>

    @if(Auth::user()->isAdmin())

        <a href="{{ URL::to('/admin/panel') }}">Admin panel</a>

    @endif

@endsection

