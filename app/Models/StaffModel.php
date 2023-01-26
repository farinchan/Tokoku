<?php

namespace App\Models;

use CodeIgniter\Model;

class StaffModel extends Model
{
    protected $table = 'users ';
    protected $primaryKey = "id";
    protected $useAutoIncrement = true;
    protected $allowedFields = ['id', 'email', 'username', 'password_hash', 'staf_toko', 'staf_toko_id', 'reset_hash', 'reset_at', 'reset_expires', 'activate_hash', 'status', 'status_message', 'active', 'force_pass_reset', 'created_at', 'updated_at', 'deleted_at'];

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
