<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class GameCategory extends ResourceController
{
    protected $modelName = 'App\Models\GameCategory';
    protected $format = 'json';
    public function index()
    {
        return $this->respond($this->model->orderBy('name')->findAll());
    }
}
