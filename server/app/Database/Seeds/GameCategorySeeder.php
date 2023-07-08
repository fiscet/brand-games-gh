<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use App\Models\GameCategory;

class GameCategorySeeder extends Seeder
{
    public function run()
    {
        $model = new GameCategory;
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 20; $i++) {
            $model->save(
                [
                    'name' => substr($faker->sentence(2), 0, -1)
                ]
            );
        }
    }
}
