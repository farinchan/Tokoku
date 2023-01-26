<?php

namespace App\Models;

use CodeIgniter\Model;

class CategoryModel extends Model
{
    protected $table = 'categories ';
    protected $primaryKey = "id";
    protected $useAutoIncrement = true;
    protected $allowedFields = ['id', 'name', 'slug', 'user_id'];

    public function getObjek($id = false)    {
        if ($id == false) {
            return $this->findAll();
        }
        return $this->where(['id' => $id])->first();
    }

    public function laprelasi()
    {
        $query = $this->db->table('tobjekwisata')
            ->join('transaksi', 'tobjekwisata.kode=transaksi.kode')
            ->get();

        return $query;
    }
}
