@extends('layout.app')

@section('content')

        <div class="container cards-block">
            <div class="row row-cols-1 row-cols-md-2 g-4">
                @foreach($games as $key => $game)
                    <div class="col">
                        <div class="card h-100">
                            <div class="img">
                                <a href="{{ route('game', $game->id) }}">
                                    <img
                                        src="{{ $game->image_url }}"
                                        class="my-card-img card-img-top" alt="...">
                                </a>
                            </div>

                            <div class="card-body">
                                <span><a href="{{ route('genre', $game->genre->id) }}" style="text-decoration: none">{{ $game->genre->name }}</a></span>
                                <h5 class="card-title"><a href="" class="my-card-link">{{ $game->name }}</a></h5>
                                <p class="card-text">{{ $game->short_description }}</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated {{ $game->updated_at }}</small>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="pagination w-25">
            {{ $games->links('pagination::bootstrap-5') }}
        </div>


@endsection
