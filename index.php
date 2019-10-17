<?php
	use \Psr\Http\Message\ServerRequestInterface as Request;
	use \Psr\Http\Message\ResponseInterface as Response;
	require_once "header.php";


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
			$this->post("", "ClienteController:inserir");
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

	$app->group("/produtos",
		function() {
			$this->get("", "ProdutoController:listar");
		}
	);

	$app->run();
?>
