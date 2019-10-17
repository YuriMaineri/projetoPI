<?php
	use \Psr\Http\Message\ServerRequestInterface as Request;
	use \Psr\Http\Message\ResponseInterface as Response;

	require "vendor/autoload.php";
	require_once "db/PDOFactory.php";
	require_once "class/Cliente.php";
	require_once "class/Colaborador.php";
	require_once "dao/ClienteDAO.php";
	require_once "dao/ColaboradorDAO.php";
	require_once "controllers/ClienteController.php";
	require_once "controllers/ColaboradorController.php";

	$config = [ 
		'settings' => [ 
			 'displayErrorDetails' => true,
		    	 'addContentLengthHeader' => false,
		]
	];

	$app = new \Slim\App($config);

	$app->group("/clientes", 
		function() {
			$this->get("", "ClienteController:listar");
		//	$this->get("/{id:[0-9]+}", "ProdutoController:buscarPorId");
		//	$this->post("", "ProdutoController:inserir");
		//	$this->put("/{id:[0-9]+}", "ProdutoController:atualizar");
		//	$this->delete("/{id:[0-9]+}", "ProdutoController:deletar");
		}
	);

	$app->group("/colaboradores",
		function() {
			$this->get("", "ColaboradorController:listar");
			$this->post("", "ColaboradorController:inserir");
		}
	);

	$app->run();
?>
