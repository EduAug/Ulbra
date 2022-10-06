<?php
class ClientController{

    var $ClientModel;

    public function __construct(){
        if(!isset($_SESSION['user'])){
            header('Location:?controller=main&action=login');
        }
        require_once('models/ClientModel.php');
        $this -> ClientModel = new ClientModel();
    }

    public function listClients(){
        $result = $this -> ClientModel -> listClients();
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
        $result = $this -> ClientModel->consultClient($idClient);
        if($arrayClient = $result->fetch_assoc()){
            require_once('views/templates/header.php');
            require_once('views/templates/body.php');
            require_once('views/client/detailsClient.php');
            require_once('views/templates/footer.php');
        }
    }

    public function insertClient(){
        require_once('views/templates/header.php');
        require_once('views/templates/body.php');
        require_once('views/client/insertClient.php');
        require_once('views/templates/footer.php');
    }

    public function insertClientAction(){
        $arrayClient = array(
            'name' => $_POST['name'],
            'email' => $_POST['email'],
            'phone' => $_POST['phone'],
            'address' => $_POST['address'],
        );
        $this -> ClientModel -> insertClient($arrayClient);
        header('Location:?controller=client&action=listClients');
    }

    public function updateClient($idClient){
        $result = $this -> ClientModel -> consultClient($idClient);
        if($arrayClient = $result->fetch_assoc()){
            require_once('views/templates/header.php');
            require_once('views/templates/body.php');
            require_once('views/client/updateClient.php');
            require_once('views/templates/footer.php');
        }
    }

    public function updateClientAction($idClient){
        $arrayClient = array(
            'idClient' => $idClient,
            'name' => $_POST['name'],
            'email' => $_POST['email'],
            'phone' => $_POST['phone'],
            'address' => $_POST['address'],
        );
        $this -> ClientModel -> updateClient($arrayClient);
        header('Location:?controller=client&action=listClients');
    }

    public function deleteClient($idClient){
        $this -> ClientModel -> deleteClient($idClient);
        header('Location:?controller=client&action=listClients');
    }
}