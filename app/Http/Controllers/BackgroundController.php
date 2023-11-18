<?php

namespace App\Http\Controllers;

use App\Models\Background;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;

class BackgroundController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.background', [
            'backgrounds' => Background::all()
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
            'image' => 'required|image',
        ]);

        $imageName = $request->name . '_' . time() . 'background_image.' . $request->image->extension();
        $request->image->storeAs('public/images', $imageName);

        $validated['image'] = $imageName;

        $game = Background::create(
            [
                ...$validated,
                'image_url' => URL::to('/') . '/public/storage/images/' . $imageName,
            ]
        );

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     */
    public function show(Background $background)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Background $background)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Background $background)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Background $background)
    {
        //
    }
}
