<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use App\Models\BrandGame;

class BrandGameSeeder extends Seeder
{
    public function run()
    {
        $model = new BrandGame;
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 101; $i++) {
            $model->save(
                [
                    'launchcode' => $i + 1,
                    'brandid' => $faker->numberBetween(1, 10),
                    'category_id' => $faker->numberBetween(1, 20),
                    'hot' => $faker->boolean(),
                    'new' => $faker->boolean(),
                    'blocked' => $faker->boolean()
                ]
            );
        }
    }
}