<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class Brand extends ResourceController
{
    protected $modelName = 'App\Models\Brand';
    protected $format = 'json';
    public function index()
    {
        return $this->respond($this->model->orderBy('name')->findAll());
    }
}
