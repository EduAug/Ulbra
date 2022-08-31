<?php

class SiteController{

    public function home(){
        include('views/templates/header.php');
        include('views/templates/body.php');
        include('views/site/home.php');
        include('views/templates/footer.php');
    }

    public function about(){
        include('views/templates/header.php');
        include('views/templates/body.php');
        include('views/site/about.php');
        include('views/templates/footer.php');
    }
    
    public function products(){
        require_once('models/ProductModel.php');
        $productModel = new ProductModel();
        $result = $productModel -> listProducts();

        $arrayProducts = array();

        while($product2 = $result -> fetch_assoc()){
            array_push($arrayProducts, $product2);
        }

        include('views/templates/header.php');
        include('views/templates/body.php');
        include('views/site/products.php');
        include('views/client/listProducts.php');
        include('views/templates/footer.php');
    }

    public function contact(){
        include('views/templates/header.php');
        include('views/templates/body.php');
        include('views/site/contact.php');
        include('views/templates/footer.php');
    }


}

?>