@extends('layout.admin')

@section('content')
    <form class="row g-3" method="post" action="{{ route('admin_genre_edit_put', $genre) }}"
          enctype="multipart/form-data">

        @csrf
        @method('put')

        <div class="col-md-12">
            <label for="validationServer01" class="form-label">Название</label>
            <input type="text" name="name" class="form-control @error('name') is-invalid @enderror"
                   id="validationServer01" value="{{ $genre->name }}"
                   required>
            @error('name')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <div class="col-12">
            <button class="btn btn-primary" type="submit">Обновить</button>
        </div>
    </form>

    <form class="mt-5" method="post" action="{{ route('admin_genre_edit_delete', $genre) }}">

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
