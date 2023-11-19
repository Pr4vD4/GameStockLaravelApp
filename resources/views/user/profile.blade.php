@php use Illuminate\Support\Facades\Auth;use Illuminate\Support\Facades\URL; @endphp
@extends('layout.user')

@section('content')
    {{--    {{ Auth::user() }}--}}

    {{--    <a href="{{ URL::to('/logout') }}">Logout</a>--}}

    {{--    @if(Auth::user()->isAdmin())--}}

    {{--        <a href="{{ URL::to('/admin/panel') }}">Admin panel</a>--}}

    {{--    @endif--}}

    <div class="container mt-4 mb-4 p-3 d-flex justify-content-center">
        <div class="card p-4">
            <div class=" image d-flex flex-column justify-content-center align-items-center">
                {{--                <button class="btn btn-secondary"><img src="https://i.imgur.com/wvxPV9S.png" height="100" width="100"/>--}}
                {{--                </button>--}}
                <span class="name">{{ Auth::user()->name }}</span> <span
                    class="idd">{{ Auth::user()->email }}</span>
                {{--                <div class="d-flex flex-row justify-content-center align-items-center gap-2"><span class="idd1">Oxc4c16a645_b21a</span>--}}
                {{--                    <span><i class="fa fa-copy"></i></span></div>--}}
                <div class="d-flex flex-row justify-content-center align-items-center mt-3"><span
                        class="number">N <span class="follow">Games downloaded</span></span></div>
                <div class=" d-flex mt-2 flex-column">
                    <button class="btn1 btn-dark">Edit Profile</button>
                    <a href="{{ url()->route('admin_panel') }}" class="btn1 btn-admin btn-dark mt-2" >Панель администартора</a>
                </div>
                <div class="text mt-3">
                    <span>
                        {{ Auth::user()->name }} is a {{ Auth::user()->role->name }}
                        <br>
                        <br>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque fuga libero magnam. Aspernatur cum, dolore ipsum iusto magni modi neque non pariatur, quos, tempora voluptates.
                    </span>
                </div>
                <div class="gap-3 mt-3 icons d-flex flex-row justify-content-center align-items-center"><span><i
                            class="fa fa-twitter"></i></span> <span><i class="fa fa-facebook-f"></i></span> <span><i
                            class="fa fa-instagram"></i></span> <span><i class="fa fa-linkedin"></i></span></div>
                <div class=" px-2 rounded mt-4 date ">
                    <span class="join">
                        Joined {{ Auth::user()->created_at }}
                    </span>
                </div>
                <div class="text mt-3">
                    <a href="{{ url()->previous() }}" class="back">
                        Назад
                    </a>
                </div>
            </div>
        </div>
    </div>

@endsection

