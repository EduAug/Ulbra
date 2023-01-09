<?php 

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\UserModel;

class User extends BaseController{

    public function validateLogin(){

        $userName = $this -> request -> getVar('userName');

        $userPassword = $this -> request -> getVar('password');

        $UserModel = new UserModel();

        if($user = $UserModel -> getUser($userName)){
            
            if($user['password'] == $userPassword){
                if($user['admin'] == 1){    /*Conferir no banco se tem permissão
                                            Como administrador*/
                    $session = \Config\Services::session();
                    $session -> set('user', $user);
                    return redirect() -> to(base_url('/admin'));
                }else{
                    return redirect() -> to(base_url('/'));
                    /* Não iniciar sessão uma vez que o "usuário comum"
                    Não tem uma área específica dele, então deixar só
                    pro ADM*/
                }
            }else{
                echo 'Wrong password';
            }
        }else{
            echo 'Unknown User';
        }

    }

}