<?php

namespace App\Controllers;

use App\Models\StaffModel;

class Staff extends BaseController
{
    protected $Objek, $Category;
    public function __construct()
    {
        $this->Objek = new StaffModel();
    }
    public function index()
    {
        $Objek = $this->Objek->where("staf_toko_id", user()->id)->findAll();
        $data = [
            'active' => 'staff',
            'objek' => $Objek
        ];
        return view('dashboard/staff', $data);
    }
    public function add()
    {
        $data = [
            'active' => 'Staff',
        ];
        return view('dashboard/addStaff', $data);
    }
}
