<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);

        App\User::create([
            'id'=> 1,
            'name'=>'Frank Lisboa Abad',
            'email'=>'franklisboaabad@gmail.com',
            'password'=> bcrypt('secret')
        ]);

        factory(App\Personaje::class, 30)->create();
    }
}
