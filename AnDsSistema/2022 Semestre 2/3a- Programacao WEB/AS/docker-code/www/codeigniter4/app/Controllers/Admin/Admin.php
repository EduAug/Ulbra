<?php 

namespace App\Controllers\Admin;

use App\Controllers\BaseController;

class Admin extends BaseController{

    public function index(){

        $session = \Config\Services::session();

        if ($session -> has('user')){
            echo view('admin/templates/header');
            echo view('admin/templates/body');
            echo view('admin/templates/home');
            echo view('admin/templates/footer');
        }else{
            return redirect()->to(base_url('admin/login'));
        }

    }

    public function login(){
        echo view ('admin/login.php');
    }

    public function logout(){
        $session = \Config\Services::session();
        $session -> destroy();
        return redirect()->to(base_url('admin/login'));        
    }
}