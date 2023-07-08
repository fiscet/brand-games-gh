<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use App\Models\GameProvider;

class GameProviderSeeder extends Seeder
{
    public function run()
    {
        $model = new GameProvider;
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 10; $i++) {
            $model->save(
                [
                    'name' => $faker->company
                ]
            );
        }
    }
}
