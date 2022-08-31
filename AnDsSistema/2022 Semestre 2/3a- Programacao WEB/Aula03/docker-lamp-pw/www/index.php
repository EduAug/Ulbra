    <?php

        if (!isset($_GET['controller'])){
            require_once('controllers/SiteController.php');
            $SiteController = new SiteController();
            $SiteController -> home();
        }else{
            
            switch ($_REQUEST['controller']) {
                case 'site':
                    require_once('controllers/SiteController.php');
                    $SiteController = new SiteController();
                    
                    if(!isset($_GET['action'])){

                        $SiteController -> home();

                    }else{

                        switch ($_REQUEST['action']){
                            case 'home':
                                $SiteController -> home();
                                break;
                            
                            case 'about':
                                $SiteController -> about();
                                break;
                            
                            case 'products':
                                $SiteController -> products();
                                break;
                            
                            case 'contact':
                                $SiteController -> contact();
                                break;
                            
                        }

                    }


                    break;
            }

        }

    ?>