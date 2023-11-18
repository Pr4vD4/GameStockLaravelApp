<?php

namespace App\Http\Controllers;

use App\Models\Genre;
use Illuminate\Http\Request;

class GenreController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.genre', [
            'genres' => Genre::all()
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
            'name' => 'required|unique:genres,name'
        ]);

        $genre = Genre::create($validated);

        return redirect()->back();

    }

    /**
     * Display the specified resource.
     */
    public function show(Genre $genre)
    {
        return view('genre', [
            'genre' => $genre
        ]);
    }

    public function admin_show(Genre $genre)
    {
        return view('admin.genre_edit', [
            'genre' => $genre
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Genre $genre)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Genre $genre)
    {
        $validated = $request->validate([
            'name' => 'required',
        ]);


        $genre->update($validated);

        return redirect()->route('admin_genre');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Genre $genre)
    {
        $genre->delete();

        return redirect()->route('admin_genre');
    }
}
