<?php

namespace App\Models;

use CodeIgniter\Model;

class ProductsModel extends Model
{
    protected $table = 'products ';
    protected $primaryKey = "id";
    protected $useAutoIncrement = true;
    protected $allowedFields = ['id', 'name', 'description', 'barcode', 'stock', 'selling_price', 'capital_price', 'category_id', 'user_id'];

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
