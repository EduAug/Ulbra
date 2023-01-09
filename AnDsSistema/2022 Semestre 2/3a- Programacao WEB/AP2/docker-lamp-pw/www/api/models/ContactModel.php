<?php

class ContactModel{
    var $connection;

    public function __construct(){
        require_once('db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass -> openConnect();
        $this -> connection = $ConnectClass -> getConn();
    }

    public function insertContact($arrayContact){
        $sql = "INSERT INTO contacts (name, email, message) 
        VALUES 
        (
        '{$arrayContact['name']}',
        '{$arrayContact['email']}',
        '{$arrayContact['message']}'
        )";
        return $this -> connection -> query($sql);
    }

    public function listContacts(){
        $sql = "SELECT * FROM contacts";
        return $this -> connection -> query($sql);
    }

    public function consultContact($idContact){
        $sql = "SELECT * FROM contacts WHERE idContact = $idContact";
        return $this -> connection -> query($sql);
    }

}