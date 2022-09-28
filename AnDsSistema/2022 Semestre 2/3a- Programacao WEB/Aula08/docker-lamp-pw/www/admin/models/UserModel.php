<?php
class UserModel{
    public function consultUser($userName){

        require_once('db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass ->openConnect();
        $connection = $ConnectClass ->getConn();

        $sql = "SELECT * FROM users WHERE user = '$userName'";


        return $connection -> query($sql);


    }
}