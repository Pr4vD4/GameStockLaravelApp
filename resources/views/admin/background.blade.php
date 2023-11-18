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

                <form class="row g-3" method="post" action="{{ route('admin_background_post') }}"
                      enctype="multipart/form-data">

                    @csrf
                    @method('post')


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
                Все фоновые изображения
            </button>
        </h2>
        <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse">
            <div class="accordion-body">
                <div class="row row-cols-1 row-cols-md-2 g-4">
                    @foreach($backgrounds as $key => $background)
                        <div class="col">
                            <div class="card h-100">
                                <div class="img">
                                    <img
                                        src="{{ $background->image_url }}"
                                        class="my-card-img card-img-top" alt="...">

                                </div>
                                <div class="card-footer">
                                    <small class="text-muted">Last updated {{ $background->updated_at }}</small>
                                </div>
                                <div class="card-footer">
{{--                                    <a href="{{ route('admin_background_edit', $background->id) }}">--}}
{{--                                        Редактировать--}}
{{--                                    </a>--}}
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
