<?php
class ProductModel{

    public function listProducts(){
        require_once('db/ConnectClassProducts.php');
        $connectClass = new ConnectClassProducts();
        $connectClass -> openConnect();
        $connection = $connectClass -> getConn();

        $sql = 'SELECT * FROM clients'; //Mudar posteriormente

        return $connection -> query($sql);
    }

}
?>