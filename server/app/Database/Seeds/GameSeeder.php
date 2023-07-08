<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use App\Models\Game;

class GameSeeder extends Seeder
{
    public function run()
    {
        $model = new Game;
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 100; $i++) {
            $model->save(
                [
                    'name' => $faker->userName, 
                    'game_provider_id' => $faker->numberBetween(1, 10), 
                    'rtp' => $faker->randomDigit()/10
                ]
            );
        }
    }
}