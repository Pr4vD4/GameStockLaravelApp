<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    public function login(Request $request)
    {

        $validated = $request->validate([
            'email' => 'required|exists:users,email',
            'password' => 'required',
        ]);

        if (isset($request->remember)) {
            $request->remember = true;
        } else {
            $request->remember = false;
        }

        $user = User::query()->where('email', $validated['email'])->first();

        if (Hash::check($request->password, $user->password)) {
            Auth::login($user, $request->remember);
        } else {
            return redirect()->back()->withErrors([
                'password' => 'Wrong password'
            ]);
        }

        return redirect('/');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $validated = $request->validate([
            'email' => 'required|unique:users,email',
            'name' => 'required',
            'password' => 'required|confirmed',
        ]);

        $validated['password'] = Hash::make($validated['password']);


        $user = User::create(
            $validated
        );

        if (isset($request->remember)) {
            $request->remember = true;
        } else {
            $request->remember = false;
        }

        Auth::login($user, $request->remember);

        return redirect('/');

    }

    public function logout()
    {

        Auth::logout();

        return redirect()->route('index');

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
