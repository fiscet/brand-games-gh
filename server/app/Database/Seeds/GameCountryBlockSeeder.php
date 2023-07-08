<?php
namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use App\Models\BrandGame;
use App\Models\Country;
use App\Models\GameCountryBlock;

class GameCountryBlockSeeder extends Seeder
{
    public function run()
    {
        $brandGameModel = new BrandGame;
        $countryModel = new Country;

        $gamesWithoutBlock = $brandGameModel->where('blocked', 0)->findAll();
        $countries = $countryModel->findAll();

        $model = new GameCountryBlock;
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < count($gamesWithoutBlock); $i++) {

            $countryIndex = $faker->randomDigit();

            $model->save(
                [
                    'launchcode' => $gamesWithoutBlock[$i]['launchcode'],
                    'brand_id' => $gamesWithoutBlock[$i]['brand_id'],
                    'country_iso' => $countries[$countryIndex]['country_iso']
                ]
            );
        }
    }
}