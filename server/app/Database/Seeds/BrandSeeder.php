<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use App\Models\Brand;

class BrandSeeder extends Seeder
{
    public function run()
    {
        $model = new Brand;
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