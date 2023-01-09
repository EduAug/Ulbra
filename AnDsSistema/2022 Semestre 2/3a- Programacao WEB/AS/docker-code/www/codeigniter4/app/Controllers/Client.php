<?php

namespace App\Controllers;

use App\Models\ClientModel;

class Client extends BaseController{

    public function listClients(){
        $ClientModel = new ClientModel();

        $data = [
            'arrayClients' => $ClientModel -> findAll()
        ];

        echo view ('templates/header');
        echo view ('client/listClients', $data);
        echo view ('templates/body');
        echo view ('templates/footer');

    }

    public function detailsClient($idClient){
        $ClientModel = new ClientModel();
        $data = [
            'arrayClient' => $ClientModel -> find($idClient)
        ];

        echo view ('templates/header');
        echo view ('client/detailsClient', $data);
        echo view ('templates/body');
        echo view ('templates/footer');
    }

}