@extends('layout.auth')

@section('auth_content')
    <div class="login-title h1 text-center">Log in</div>
    <form class="row g-3 my-form" method="post" action="{{ route('login') }}">

        @csrf
        @method('post')

        <div class="col-12">
            <label for="input_email" class="form-label">Email</label>
            <input type="text" class="form-control @error('email') is-invalid @enderror" id="inputEmail" placeholder="Email" name="email">
            @error('email') {{ $message }} @enderror
        </div>
        <div class="col-12">
            <label for="input_password" class="form-label">Password</label>
            <input type="password" class="form-control @error('password') is-invalid @enderror" id="inputPassword" placeholder="********" name="password">

            @error('password') {{ $message }} @enderror

        </div>

        <div class="col-12">
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="input_remember_me" name="remember">
                <label class="form-check-label" for="input_remember_me">
                    Remember me
                </label>

            </div>
        </div>
        <div class="col-12">
            <button type="submit" class="btn btn-bgish">Log in</button>
        </div>
    </form>
    <div class="h5 text-center"><a href="/registration" class="my-card-link">Don't have an account?</a></div>
@endsection
