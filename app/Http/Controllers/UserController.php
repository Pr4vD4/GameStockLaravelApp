<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.user', [
            'users' => User::all(),
            'roles' => Role::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
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
            'role_id' => 'required|exists:roles,id'
        ]);

        $validated['password'] = Hash::make($validated['password']);

        User::create($validated);

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    public function admin_show(User $user)
    {
        return view('admin.user_edit', [
            'user' => $user,
            'roles' => Role::all()
        ]);
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
    public function update(Request $request, User $user)
    {
        $validated = $request->validate([
            'email' => 'required|unique:users,email',
            'name' => 'required',
            'password' => 'required|confirmed',
            'role_id' => 'required|exists:roles,id'
        ]);

        $validated['password'] = Hash::make($validated['password']);

        $user->update($validated);

        return redirect()->route('admin_user');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {
        $user->delete();

        return redirect()->route('admin_user');
    }
}
