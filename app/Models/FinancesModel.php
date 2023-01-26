<?php

namespace App\Models;

use CodeIgniter\Model;

class FinancesModel extends Model
{
    protected $table = 'finances';
    protected $primaryKey = "id";
    protected $useAutoIncrement = true;
    protected $allowedFields = ['id', 'name', 'description', 'date', 'amount', 'note', 'user_id'];

    public function getObjek($id = false)    {
        if ($id == false) {
            return $this->findAll();
        }
        return $this->where(['id' => $id])->first();
    }

    public function laprelasi()
    {
        $query = $this->db->table('products')
            ->join('category', 'products.category.id=category.id')
            ->get();

        return $query;
    }
}
