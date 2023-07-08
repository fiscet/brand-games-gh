<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use App\Models\Country;

class CountrySeeder extends Seeder
{
    public function run()
    {
        $model = new Country;
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 10; $i++) {
            $model->save(
                [
                    'country_iso' => $faker->countryCode(),
                    'country' => $faker->country()
                ]
            );
        }
    }
}