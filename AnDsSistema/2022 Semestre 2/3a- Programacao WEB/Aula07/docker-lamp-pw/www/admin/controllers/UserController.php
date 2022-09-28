<?php
class UserController{
    public function validatelogin(){
        $userName = $_POST['userName'];
        $password = $_POST['password'];
        require_once('models/UserModel.php');
        $UserModel = new UserModel();

        $result = $UserModel -> consultUser($userName);

        if($line = $result -> fetch_assoc()){
            if($password == $line['password']){
                $_SESSION['user'] = $line;
                header('Location: index.php');
            }else{
                echo 'senha inválida';
            }
        }else{
            echo 'usuário não existente';
        }
    }
}