@extends('layout.auth')

@section('auth_content')

    <div class="login-title h1 text-center">Registration</div>

    <form class="row g-3 my-form" method="post" action="{{ route('registration') }}">

        @csrf
        @method('post')

        <div class="col-md-6">
            <label for="inputEmail4" class="form-label">Email</label>
            <input type="email" class="form-control  @error('email') is-invalid @enderror" id="inputEmail4" placeholder="youremailadress@*.*" name="email">
        </div>
        <div class="col-md-6">
            <label for="inputUsername" class="form-label">Username</label>
            <input type="text" class="form-control" id="inputUsername" placeholder="Username" name="name">
        </div>
        <div class="col-12">
            <label for="inputPassword" class="form-label">Password</label>
            <input type="password" class="form-control" id="inputPassword" placeholder="********" name="password">
        </div>
        <div class="col-12">
            <label for="inputPassword2" class="form-label">Confirm password</label>
            <input type="password" class="form-control" id="inputPassword2" placeholder="********" name="password_confirmation">
        </div>

        <div class="col-12">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="gridCheck" name="remember">
                <label class="form-check-label" for="gridCheck">
                    Remember me
                </label>
            </div>
        </div>
        <div class="col-12">
            <button type="submit" class="btn btn-bgish">Register</button>
        </div>
    </form>
    <div class="h5 text-center"><a href="/login" class="my-card-link">Already have an account?</a></div>



@endsection
