<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    use HasFactory;

    public function genre()
    {
        return $this->belongsTo(Genre::class);
    }

    protected $fillable = [
        'name',
        'image',
        'image_url',
        'short_description',
        'genre_id',
        'description',
        'file',
        'download_link',
        'user_id',

    ];
}
