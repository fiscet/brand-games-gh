<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class BrandGame extends ResourceController
{
    protected $modelName = 'App\Models\BrandGame';
    protected $format = 'json';

    public function index() {
        return $this->respond('I have nothing to show you, goodbye!');
    }

    public function list($brandId, $countryIso, $categoryId = null)
    {
        $data = [
            'brandId' => $brandId,
            'countryIso' => $countryIso,
        ];

        $rule = [
            'brandId' => 'integer',
            'countryIso' => 'required|max_length[2]',
        ];

        if (!$this->validateData($data, $rule)) {
            return $this->failValidationError("I don't understand your request :-)");
        }

        return $this->respond($this->model->getAvailableGames($brandId, $countryIso, $categoryId));
    }

    public function show($launchcode = null)
    {
        $data = $this->model->where('launchcode', $launchcode)->first();
        if ($data) {
            return $this->respond($data);
        } else {
            return $this->failNotFound('No game found');
        }
    }
}