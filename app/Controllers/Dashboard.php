<?php

namespace App\Controllers;

class Dashboard extends BaseController
{
    public function index()
    {
        $data = [
            'active' => 'home'
        ];
        return view('dashboard/home', $data);
    }
}
