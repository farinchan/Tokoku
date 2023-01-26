<?php

namespace App\Controllers;

use App\Models\CategoryModel;
use App\Models\ProductsModel;

class Products extends BaseController
{
    protected $Objek, $Category;
    public function __construct()
    {
        $this->Objek = new ProductsModel();
        $this->Category = new CategoryModel();
    }
    public function index()
    {
        $Objek = $this->Objek->where('user_id', user()->id)->findAll();
        $data = [
            'active' => 'products',
            'objek' => $Objek
        ];
        return view('dashboard/products', $data);
    }

    public function add()
    {
        $Category = $this->Category->where('user_id', user()->id)->findAll();
        $data = [
            'active' => 'products',
            'category' => $Category
        ];
        return view('dashboard/addProduct', $data);
    }

    public function save()
    {
        $categoryName = $this->request->getVar('category_id');
        $CategoryTemp = substr($categoryName,0, 5);
        $CategoryId = trim(preg_replace("/[^0-9]/", "", $CategoryTemp));
       
        $this->Objek->save([
            'name' => $this->request->getVar('jenis'),
            'description' => $this->request->getVar('description'),
            'barcode' => $this->request->getVar('barcode'),
            'stock' => $this->request->getVar('stock'),
            'selling_price' => $this->request->getVar('selling_price'),
            'capital_price' => $this->request->getVar('capital_price'),
            'category_id' => $CategoryId,
            'user_id' => user()->id
        ]);
        session()->setFlashdata('pesan', 'Data Telah Berhasil di Simpan');
        return redirect()->to('/products');
    }
    public function delete($id)
    {
        $this->Objek->delete($id);
        session()->setFlashdata('hapus', 'Data Telah Berhasil di Hapus');
        return redirect()->to('/products');
    }
    public function edit($id)
    {
        $Objek = $this->Objek->getObjek($id);
        $Category = $this->Category->where('user_id', user()->id)->findAll();
        $data = [
            'active' => 'category',
            'category' => $Category,
            'objek' => $Objek
        ];
        return view('dashboard/editProducts', $data);
    }
    public function saveEdit($id)
    {
        $categoryName = $this->request->getVar('category_id');
        $CategoryTemp = substr($categoryName,0, 5);
        $CategoryId = trim(preg_replace("/[^0-9]/", "", $CategoryTemp));

         $this->Objek->update($id, [
            'name' => $this->request->getVar('jenis'),
            'description' => $this->request->getVar('description'),
            'barcode' => $this->request->getVar('barcode'),
            'stock' => $this->request->getVar('stock'),
            'selling_price' => $this->request->getVar('selling_price'),
            'capital_price' => $this->request->getVar('capital_price'),
            'category_id' => $CategoryId,
            'user_id' => user()->id
        ]);
        session()->setFlashdata('hapus', 'Data Telah Berhasil di Edit');
        return redirect()->to('/products');
    
    }
}
