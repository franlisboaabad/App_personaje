<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Personaje;
use Faker\Generator as Faker;

$factory->define(Personaje::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'poder' => $faker->sentence
    ];
});
