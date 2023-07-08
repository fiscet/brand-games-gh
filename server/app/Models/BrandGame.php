<?php

namespace App\Models;

use CodeIgniter\Model;

class BrandGame extends Model
{
    protected $DBGroup = 'default';
    protected $table = 'brand_games';
    protected $primaryKey = 'id';
    protected $useAutoIncrement = true;
    protected $returnType = 'array';
    protected $useSoftDeletes = false;
    protected $protectFields = false;
    protected $allowedFields = [];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat = 'datetime';
    protected $createdField = 'created_at';
    protected $updatedField = 'updated_at';
    protected $deletedField = 'deleted_at';

    // Validation
    protected $validationRules = [];
    protected $validationMessages = [];
    protected $skipValidation = true;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = false;
    protected $beforeInsert = [];
    protected $afterInsert = [];
    protected $beforeUpdate = [];
    protected $afterUpdate = [];
    protected $beforeFind = [];
    protected $afterFind = [];
    protected $beforeDelete = [];
    protected $afterDelete = [];

    public function getAvailableGames($brandId, $countryIso, $categoryId = null)
    {
        $db = \Config\Database::connect();

        $sql = sprintf("SELECT G.launchcode, G.name game_name, G.rtp, GP.name game_provider, GC.name game_category, B.name brand, BG.hot, BG.new 
        FROM `brand_games` BG 
        LEFT OUTER JOIN game_country_blocks GCB 
        ON (GCB.launchcode = BG.launchcode AND GCB.brand_id = BG.brand_id AND GCB.country_iso = '%s'), 
        `games` G, `game_providers` GP, `game_categories` GC, `brands` B 
        WHERE BG.launchcode = G.launchcode 
        AND BG.brand_id = B.id 
        AND BG.category_id = GC.id 
        AND G.game_provider_id = GP.id
        AND BG.blocked = 0 
        AND GCB.id IS NULL 
        AND BG.brand_id = %d 
        ", $countryIso, $brandId);

        $sql .= isset($categoryId) ? sprintf("AND BG.category_id = %d", $categoryId) : '';

        $query = $db->query($sql);
        $res = $query->getResult();

        if (!$res)
            return [];

        return $res;
    }
}