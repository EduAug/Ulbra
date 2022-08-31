<?php

    class ClientController{
        public function register(){
            require_once('views/templates/header.php');
            require_once('views/templates/body.php');
            require_once('views/client/register.php');
            require_once('views/templates/footer.php');
        }

        public function registerView(){
            // var_dump($_POST['name']);// echo($_POST['email']);
            if(!isset($_POST['gender'])){
                $genderNone = true;
                $genderPrint = "Gênero não informado";
            }else{
                $genderNone = false;
                $genderPrint = $_POST['gender'];
            }

            if(!isset($_POST['imovel1'])){
                $imovel1 = false;
                
            }else{
                $imovel1 = true;
            }
            if(!isset($_POST['imovel2'])){
                $imovel2 = false;
            }else{ 
                $imovel2 = true;
            }
            if(!isset($_POST['imovel3'])){
                $imovel3 = false;
               
            }else{
                $imovel3 = true;
            }
                
            $arrayClient = array(
                'name' => $_POST['name'],
                'email' => $_POST['email'],
                'gender' => $genderNone,
                'genderShow' => $genderPrint,
                'imo1' => $imovel1,
                'imo2' => $imovel2,
                'imo3' => $imovel3,
                'message' => $_POST['exp'],
                'hora' => $_POST['hora'],
            );
            
            require_once('views/templates/header.php');
            require_once('views/templates/body.php');
            require_once('views/client/registerView.php');
            require_once('views/templates/footer.php');
        }
    }

?>