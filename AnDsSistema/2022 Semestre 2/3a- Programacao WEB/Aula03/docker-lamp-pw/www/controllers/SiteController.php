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
        include('views/templates/header.php');
        include('views/templates/body.php');
        include('views/site/products.php');
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