<?php

namespace App\Http\Controllers;

use App\Models\Game;
use App\Models\Genre;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\URL;

class GameController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.game', [
            'games' => Game::all(),
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
            'name' => 'required',
            'image' => 'required|image',
            'file' => 'required',
            'short_description' => 'required',
            'description' => 'required',
            'genre_id' => 'required|exists:genres,id',
        ]);

        $imageName = str_replace(' ', '_',$request->name) . '_' . time() . 'image.' . $request->image->extension();
        $fileName = str_replace(' ', '_',$request->name) . '_' . time() . '.' . $request->file->extension();
        $request->image->storeAs('public/images', $imageName);
        $request->file->storeAs('public/files', $fileName);

        $validated['image'] = $imageName;
        $validated['file'] = $fileName;

        $game = Game::create(
            [
                ...$validated,
                'image_url' => URL::to('/') . '/public/storage/images/' . $imageName,
                'download_link' => URL::to('/') . '/public/storage/files/' . $fileName,
                'user_id' => Auth::user()->id,
            ]
        );

        return redirect()->back();

    }

    /**
     * Display the specified resource.
     */
    public function show(Game $game)
    {

        return view('game', [
            'game' => $game
        ]);

    }

    public function randomgame()
    {
        return view('game', [
            'game' => Game::inRandomOrder()->limit(1)->first()
        ]);
    }

    public function admin_show(Game $game)
    {
        return view('admin.game_edit', [
            'game' => $game,
            'genres' => Genre::all(),
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Game $game)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Game $game)
    {
        $validated = $request->validate([
            'name' => 'required',
            'image' => 'image',
            'short_description' => 'required',
            'description' => 'required',
            'genre_id' => 'required|exists:genres,id',
        ]);

        if (!isset($request->image)) {

            $validated['image'] = $game->image;
            $validated['image_url'] = $game->image_url;

        } else {

            if (Storage::exists('public/images/'.$game->image)) {
                Storage::delete('public/images/'.$game->image);
            }

            $imageName = str_replace(' ', '_',$request->name) . '_' . time() . 'image.' . $request->image->extension();
            $request->image->storeAs('public/images', $imageName);

            $validated['image'] = $imageName;
            $validated['image_url'] = URL::to('/') . '/public/storage/images/' . $imageName;

        }

        if (!isset($request->file)) {
            $validated['file'] = $game->file;
            $validated['download_link'] = $game->download_link;

        } else {

            if (Storage::exists('public/files/'.$game->file)) {
                Storage::delete('public/files/'.$game->file);
            }

            $fileName = str_replace(' ', '_',$request->name) . '_' . time() . '.' . $request->file->extension();
            $request->file->storeAs('public/files', $fileName);

            $validated['file'] = $fileName;
            $validated['download_link'] = URL::to('/') . '/public/storage/files/' . $fileName;
        }

        $game->update($validated);

        return redirect()->route('admin_game');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Game $game)
    {

        if (Storage::exists('public/images/'.$game->image)) {
            Storage::delete('public/images/'.$game->image);
        }

        $game->delete();

        return redirect()->route('admin_game');
    }
}
