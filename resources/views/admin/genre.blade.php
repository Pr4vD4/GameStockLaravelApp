@extends('layout.admin')

@section('content')

    <div class="accordion" id="accordionPanelsStayOpenExample">

        <div class="accordion-item">
            <h2 class="accordion-header">
                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                        data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                        aria-controls="panelsStayOpen-collapseOne">
                    Создать новый жанр
                </button>
            </h2>
            <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
                <div class="accordion-body">

                    <form class="row g-3" method="post" action="{{ route('admin_genre_post') }}">

                        @csrf
                        @method('post')

                        <div class="col-md-4">
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
                    Все жанры
                </button>
            </h2>
            <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse">
                <div class="accordion-body" >
                    @foreach($genres as $key => $genre)
                        <div class="gotten-item">
                            <a href="{{ route('admin_genre_edit', $genre) }}">{{ $genre->name }}</a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>

    </div>

@endsection
