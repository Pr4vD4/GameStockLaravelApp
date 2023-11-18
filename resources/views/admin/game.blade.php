@extends('layout.admin')

@section('content')

    <div class="accordion-item">
        <h2 class="accordion-header">
            <button class="accordion-button " type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                    aria-controls="panelsStayOpen-collapseOne">
                Создать новую игру
            </button>
        </h2>
        <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
            <div class="accordion-body">

                <form class="row g-3" method="post" action="{{ route('admin_game_post') }}"
                      enctype="multipart/form-data">

                    @csrf
                    @method('post')

                    <div class="col-md-12">
                        <label for="validationServer01" class="form-label">Название</label>
                        <input type="text" name="name" class="form-control @error('name') is-invalid @enderror"
                               id="validationServer01"
                               required>
                        @error('name')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                    <div class="col-md-6">
                        <label for="validationServer01" class="form-label">Изображение</label>
                        <input type="file" name="image" class="form-control @error('image') is-invalid @enderror"
                               id="validationServer01"
                               required>
                        @error('image')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                    <div class="col-md-6">
                        <label for="validationServer01" class="form-label">Файл на скачивание</label>
                        <input type="file" name="file" class="form-control @error('file') is-invalid @enderror"
                               id="validationServer01"
                               required>
                        @error('file')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                    <div class="col-md-8">
                        <label for="validationServer01" class="form-label">Короткое описание</label>
                        <textarea name="short_description"
                                  class="form-control @error('short_description') is-invalid @enderror"
                                  id="validationServer01"
                                  required></textarea>
                        @error('short_description')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                    <div class="col-md-4">
                        <label for="validationServer01" class="form-label">Жанр</label>
                        <select name="genre_id" class="form-select @error('genre_id') is-invalid @enderror"
                                aria-label="Default select example">
                            @foreach($genres as $key => $genre)
                                <option value="{{ $genre->id }}">{{ $genre->name }}</option>

                            @endforeach
                        </select>
                        @error('genre_id')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                    <div class="col-md-12">
                        <label for="validationServer01" class="form-label">Описание</label>
                        <textarea name="description"
                                  class="form-control @error('description') is-invalid @enderror"
                                  id="validationServer01"
                                  required></textarea>
                        @error('description')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                    <div class="col-12">
                        <button class="btn btn-primary" type="submit">Создать</button>
                    </div>
                </form>

            </div>
        </div>
    </div>

    <div class="accordion-item">
        <h2 class="accordion-header">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
                    aria-controls="panelsStayOpen-collapseTwo">
                Все Игры
            </button>
        </h2>
        <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse">
            <div class="accordion-body">
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
                                    <h5 class="card-title"><a href="" class="my-card-link">{{ $game->name }}</a></h5>
                                    <p class="card-text">{{ $game->short_description }}</p>
                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">Last updated {{ $game->updated_at }}</small>
                                </div>
                                <div class="card-footer">
                                    <a href="{{ route('admin_game_edit', $game->id) }}">
                                       Редактировать
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

    </div>

@endsection
