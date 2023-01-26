<?php

namespace App\Controllers;

use App\Models\CategoryModel;

class Category extends BaseController
{
    protected $Objek;
    public function __construct()
    {
        $this->Objek = new CategoryModel();
    }
    public function index()
    {
        $Objek = $this->Objek->where('user_id', user()->id)->findAll();
        $data = [
            'active' => 'category',
            'objek' => $Objek
        ];
        return view('dashboard/category', $data);
    }

    public function add()
    {
        $data = [
            'active' => 'category',
        ];
        return view('dashboard/addCategory', $data);
    }

    public function save()
    {
        $jenis = $this->request->getVar('jenis');
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $jenis)));

        $this->Objek->save([
            'name' => $this->request->getVar('jenis'),
            'slug' => $slug,
            'user_id' => user()->id
        ]);
        session()->setFlashdata('pesan', 'Data Telah Berhasil di Simpan');
        return redirect()->to('/category');
    }
    public function delete($id)
    {
        //return $id;
        $this->Objek->delete($id);
        session()->setFlashdata('hapus', 'Data Telah Berhasil di Hapus');
        return redirect()->to('/category');
    }
    public function edit($id)
    {
        $Objek = $this->Objek->getObjek($id);
        $data = [
            'active' => 'category',
            'objek' => $Objek
        ];
        return view('dashboard/editCategory', $data);
    }
    public function saveEdit($id)
    {

        $jenis = $this->request->getVar('jenis');
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $jenis)));

         $this->Objek->update($id, [
            'name' => $this->request->getVar('jenis'),
            'slug' => $slug,
            'user_id' => user()->id
        ]);
        session()->setFlashdata('hapus', 'Data Telah Berhasil di Edit');
        return redirect()->to('/category');
        
    }
}
