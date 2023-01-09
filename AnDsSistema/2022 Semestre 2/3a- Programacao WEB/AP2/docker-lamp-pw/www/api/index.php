<?php 
$request_method = $_SERVER["REQUEST_METHOD"];
$local = $_SERVER['SCRIPT_NAME'];
$uri = $_SERVER['PHP_SELF']; 
$rout = str_replace($local, "", $uri);
$uriSegments = explode("/", $rout);
// 0-> index.php
// 1-> client
// 2-> id

if(isset($uriSegments[1])){	
	switch($uriSegments[1]){
		
		case 'client':
			require_once("controllers/UserController.php");
			$user = new UserController();
			if($user -> isAdmin()){
				require_once("controllers/ClientController.php");
				$client = new ClientController();
				switch($request_method){
					case 'GET':
						if(!isset($uriSegments[2]))
							$client -> listClients();
						else
							$client -> consultClient($uriSegments[2]);
					break;
					case 'POST':
						$client -> insertClient();
					break;
					case 'PUT':
						$client -> updateClient($uriSegments[2]);
					break;
					case 'DELETE':
						$client -> deleteClient($uriSegments[2]);
					break;
				}
			}
		break;

		case 'contact':
			require_once("controllers/ContactController.php");
			require_once("controllers/UserController.php");
			$contact = new ContactController();
			$user = new UserController();
			switch($request_method){
				case 'POST':
					$contact -> insertContact();
				break;
				case 'GET':
				if($user -> isAdmin()){
					if(!isset($uriSegments[2]))
						$contact -> listContacts();
					else
						$contact -> consultContact($uriSegments[2]);
				}
			}

		break;

		case 'user':
			require_once('controllers/UserController.php');
			$user = new UserController();
			switch($request_method){
				case 'GET':
					$user -> validatelogin();
				break;
			}
	}
}
?>