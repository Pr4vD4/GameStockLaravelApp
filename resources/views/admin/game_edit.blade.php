@extends('layout.admin')

@section('content')
    <form class="row g-3" method="post" action="{{ route('admin_game_edit_put', $game) }}"
          enctype="multipart/form-data">

        @csrf
        @method('put')

        <div class="col-md-12">
            <label for="validationServer01" class="form-label">Название</label>
            <input type="text" name="name" class="form-control @error('name') is-invalid @enderror"
                   id="validationServer01" value="{{ $game->name }}"
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
                   id="validationServer01">
            @error('image')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
            <small>оставьте пустым чтобы оставить старое изображение</small>
        </div>

        <div class="col-md-6">
            <label for="validationServer01" class="form-label">Файл на скачивание</label>
            <input type="file" name="file" class="form-control @error('file') is-invalid @enderror"
                   id="validationServer01">
            @error('file')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
            <small>оставьте пустым чтобы оставить старое изображение</small>
        </div>

        <div class="col-md-8">
            <label for="validationServer01" class="form-label">Короткое описание</label>
            <textarea name="short_description"
                      class="form-control @error('short_description') is-invalid @enderror"
                      id="validationServer01"
                      required>{{ $game->short_description }}</textarea>
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
                <option value="{{ $game->genre->id }}">{{ $game->genre->name }}</option>
                @foreach($genres as $key => $genre)
                    @if($genre->id != $game->genre->id)
                        <option value="{{ $genre->id }}">{{ $genre->name }}</option>
                    @endif

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
                      required>{{ $game->description }}</textarea>
            @error('description')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <div class="col-12">
            <button class="btn btn-primary" type="submit">Обновить</button>
        </div>
    </form>

    <form class="mt-5" method="post" action="{{ route('admin_game_edit_delete', $game) }}">

        @csrf
        @method('delete')

        <p>
            <button class="btn btn-danger" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
                Удалить
            </button>
        </p>
        <div style="min-height: 120px;">
            <div class="collapse collapse-horizontal" id="collapseWidthExample">
                <div class="card card-body" style="width: 160px;">
                    <div class="col-12">
                        <button class="btn btn-danger" type="submit">Подтвердить</button>
                    </div>
                </div>
            </div>
        </div>


    </form>

@endsection
