<?php

    class ConnectClassProducts{

        var $connProd;

        public function openConnect(){
            $servername = "db"; //localhost:3306
            $username = "root";
            $password = "1q2w3e4r5t";
            $dbname = "pw_exemple";

            $this ->connProd = new mysqli($servername, $username, $password, $dbname);

            if($this->connProd->connect_error){
                die("Conexão com o banco falhou ->".$this->conn->connect_error);
            }
        }

        public function getConn(){
            return $this->connProd;
        }
    }

?>