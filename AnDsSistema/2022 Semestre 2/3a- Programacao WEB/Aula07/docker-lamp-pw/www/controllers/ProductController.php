<?php

    class ProductController{
        public function listProducts(){
            require_once('models/ProductModel.php');
            $productModel = new ProductModel();
            $result = $productModel -> listProducts();

            $arrayProducts = array();

            while($product2 = $result -> fetch_assoc()){
                array_push($arrayProducts, $products2);
            }

        }
    }

?>