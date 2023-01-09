<?php
class ContactController{
    
    var $ContactModel;

    public function __construct(){
        require_once("models/ContactModel.php");
        $this -> ContactModel = new ContactModel();
    }

    public function insertContact(){
        $contact = json_decode(file_get_contents("php://input"));

        $arrayContact = (array) $contact;
        $this -> ContactModel -> insertContact($arrayContact);
        header('Content-Type: application/json');
        echo('
                {"success": "1",
                "message": "Mensagem Enviada"}
            ');
    }

    public function listContacts(){
        $result = $this -> ContactModel -> listContacts();
        $arrayContacts = array();
        while($line = $result -> fetch_assoc()){
            array_push($arrayContacts, $line);
        }
        header('Content-Type: application/json');
        echo json_encode($arrayContacts);
    }

    public function consultContact($idContact){
        $result = $this -> ContactModel->consultContact($idContact);
        if($arrayContact = $result->fetch_assoc()){
            header('Content-Type: application/json');
            echo json_encode($arrayContact);
        }else{
            header('Content-Type: application/json');
            echo('
                    {"error": "1",
                    "message": "Contato não encontrado"
                ');
        }
    }

}