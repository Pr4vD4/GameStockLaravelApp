@extends('layout.admin')

@section('content')

    <div class="accordion-item">
        <h2 class="accordion-header">
            <button class="accordion-button " type="button" data-bs-toggle="collapse"
                    data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                    aria-controls="panelsStayOpen-collapseOne">
                Создать нового пользователя
            </button>
        </h2>
        <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
            <div class="accordion-body">

                <form class="row g-3" method="post" action="{{ route('admin_user_post') }}"
                      enctype="multipart/form-data">

                    @csrf
                    @method('post')

                    <div class="col-md-6">
                        <label for="validationServer01" class="form-label">Имя пользователя</label>
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
                        <label for="validationServer01" class="form-label">Электронная почта</label>
                        <input type="email" name="email" class="form-control @error('email') is-invalid @enderror"
                               id="validationServer01"
                               required>
                        @error('email')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                    <div class="col-md-6">
                        <label for="validationServer01" class="form-label">Пароль</label>
                        <input type="password" name="password" class="form-control @error('password') is-invalid @enderror"
                               id="validationServer01"
                               required>
                        @error('password')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                    <div class="col-md-6">
                        <label for="validationServer01" class="form-label">Повторите пароль</label>
                        <input type="password" name="password_confirmation" class="form-control "
                               id="validationServer01"
                               required>
                    </div>

                    <div class="col-md-4">
                        <label for="validationServer01" class="form-label">Роль</label>
                        <select name="role_id" class="form-select @error('role_id') is-invalid @enderror"
                                aria-label="Default select example">
                            @foreach($roles as $key => $role)
                                <option value="{{ $role->id }}">{{ $role->name }}</option>

                            @endforeach
                        </select>
                        @error('role_id')
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
                Все пользователи
            </button>
        </h2>
        <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse">
            <div class="accordion-body">
                <div class="row row-cols-1 row-cols-md-2 g-4">
                    @foreach($users as $key => $user)
                        <div class="gotten-item">
                            <a href="{{ route('admin_user_edit', $user) }}">{{ $user->name }} ({{ $user->email }})</a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

    </div>

@endsection
