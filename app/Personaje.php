<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Personaje extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'poder', 'image',
    ];

    public function getGetImageAttribute()
    {
        if ($this->image) {
            return url("storage/$this->image");
        }
    }
}
