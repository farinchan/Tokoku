<?php

namespace App\Controllers;

use App\Models\FinancesModel;

class Finances extends BaseController
{
    protected $Objek;
    public function __construct()
    {
        $this->Objek = new FinancesModel();
    }
    public function index()
    {
        $Objek = $this->Objek->where('user_id', user()->id)->findAll();
        $data = [
            'active' => 'finances',
            'objek' => $Objek
        ];
        return view('dashboard/Finances', $data);
    }

    public function add()
    {
        $data = [
            'active' => 'finances'
        ];
        return view('dashboard/addFinances', $data);
    }

    public function save()
    {
        $this->Objek->save([
            'name' => $this->request->getVar('tai'),
            'description' => $this->request->getVar('description'),
            'date' => $this->request->getVar('date'),
            'amount' => $this->request->getVar('amount'),
            'note' => $this->request->getVar('note'),
            'user_id' => user()->id
        ]);
        session()->setFlashdata('pesan', 'Data Telah Berhasil di Simpan');
        return redirect()->to('/finances');
    }
    public function delete($id)
    {
        $this->Objek->delete($id);
        session()->setFlashdata('hapus', 'Data Telah Berhasil di Hapus');
        return redirect()->to('/finances');
    }
    public function edit($id)
    {
        $Objek = $this->Objek->getObjek($id);
        $data = [
            'active' => 'finances',
            'objek' => $Objek
        ];
        return view('dashboard/editFinances', $data);
    }
    public function saveEdit($id)
    {

         $this->Objek->update($id, [
            'name' => $this->request->getVar('tai'),
            'description' => $this->request->getVar('description'),
            'date' => $this->request->getVar('date'),
            'amount' => $this->request->getVar('amount'),
            'note' => $this->request->getVar('note'),
            'user_id' => user()->id
        ]);
        session()->setFlashdata('hapus', 'Data Telah Berhasil di Edit');
        return redirect()->to('/finances');
    
    }
}
