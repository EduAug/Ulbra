<?php

class ClientController{

    public function __construct(){

        if(!isset($_SESSION['user'])){
            header('Location:?controller=main&action=login');
        }
    }

    public function listClients(){
        
        require_once('models/ClientModel.php');
        $ClientModel = new ClientModel();
        $result = $ClientModel -> listClients();

        $arrayClients = array();

        while($line = $result -> fetch_assoc()){
            array_push($arrayClients, $line);
        }

        require_once('views/templates/header.php');
        require_once('views/templates/body.php');
        require_once('views/client/listClients.php');
        require_once('views/templates/footer.php');
    }

    public function detailsClient($idClient){

        require_once('models/ClientModel.php');
        $ClientModel = new ClientModel();
        $result = $ClientModel->consultClient($idClient);
        
        if($arrayClient = $result->fetch_assoc()){
            require_once('views/templates/header.php');
            require_once('views/templates/body.php');
            require_once('views/client/detailsClient.php');
            require_once('views/templates/footer.php');
        }
    }
}