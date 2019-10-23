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
			$this->post("", "ClienteController:inserir");
			$this->put("/{id:[0-9]+}", "ClienteController:atualizar");
			$this->delete("/{id:[0-9]+}", "ClienteController:deletar");
			$this->get("/{id:[0-9]+}", "ClienteController:buscarPorId");
		}
	);

	$app->group("/colaboradores",
		function() {
			$this->get("", "ColaboradorController:listar");
			$this->post("", "ColaboradorController:inserir");
			$this->put("/{id:[0-9]+}", "ColaboradorController:atualizar");
			$this->delete("/{id:[0-9]+}", "ColaboradorController:deletar");
			$this->get("/{id:[0-9]+}", "ColaboradorController:buscarPorId");
		}
	);

	$app->group("/produtos",
		function() {
			$this->get("", "ProdutoController:listar");
		}
	);

	$app->group("/relatorios",
		function() {
			$this->get("", "RelatorioController:gerarRelatorio");
		}
	);

	$app->run();
?>
