@extends('layout.app')

@section('content')

    <div class="col">

        <div class="img bg-none">
            <img
                src="{{ $game->image_url }}"
                class="card-img-top game-img" alt="...">
        </div>

        <div class="card-body">
            <span><a href="{{ route('genre', $game->genre->id) }}"
                     style="text-decoration: none">{{ $game->genre->name }}</a></span>
            <h5 class="card-title"><a href="" class="my-card-link">{{ $game->name }}</a></h5>
            <p class="card-text">{{ $game->description }}</p>

            <div class="d-flex justify-content-center w-100">
                <a href="{{ $game->download_link }}" class="btn-download">Скачать</a>
            </div>

            <small class="text-muted">Last updated {{ $game->updated_at }}</small>

            @if(\Illuminate\Support\Facades\Auth::user()->isAdmin())
                <a href="{{ route('admin_game_edit', $game->id) }}">
                    Редактировать
                </a>
            @endif


        </div>

    </div>

@endsection
