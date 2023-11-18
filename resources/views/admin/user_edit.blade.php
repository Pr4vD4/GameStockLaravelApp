@extends('layout.admin')

@section('content')
    <form class="row g-3" method="post" action="{{ route('admin_user_edit_put', $user) }}"
          enctype="multipart/form-data">

        @csrf
        @method('put')

        <div class="col-md-6">
            <label for="validationServer01" class="form-label">Имя пользователя</label>
            <input type="text" name="name" class="form-control @error('name') is-invalid @enderror"
                   id="validationServer01" value="{{ $user->name }}"
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
                   id="validationServer01" value="{{ $user->email }}"
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
                <option value="{{ $user->role->id }}">{{ $user->role->name }}</option>
                @foreach($roles as $key => $role)
                    @if($role->id != $user->role->id)
                        <option value="{{ $role->id }}">{{ $role->name }}</option>
                    @endif

                @endforeach
            </select>
            @error('role_id')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <div class="col-12">
            <button class="btn btn-primary" type="submit">Обновить</button>
        </div>
    </form>

    <form class="mt-5" method="post" action="{{ route('admin_user_edit_delete', $user) }}">

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
