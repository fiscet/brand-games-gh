<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class Country extends ResourceController
{
    protected $modelName = 'App\Models\Country';
    protected $format = 'json';

    public function index()
    {
        return $this->respond($this->model->orderBy('country')->findAll());
    }
}
