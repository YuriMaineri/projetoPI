<?php

	class ClienteDAO {

		public function listar() {
			$query = "SELECT * FROM cliente join cliente_telefone on cliente.id = cliente_telefone.id_cliente";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->execute();
			$cliente = array();
			while($row = $comando->fetch(PDO::FETCH_OBJ)) {
				$cliente[] = new Cliente($row->id,$row->nome,$row->cpf,$row->telefone);
			}
			return $cliente;
		}

		public function inserir(Cliente $cliente) {
			$query = "INSERT INTO cliente(nome, cpf) VALUES (:nome, :cpf)";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->bindParam(":nome", $cliente->nome);
			$comando->bindParam(":cpf", $cliente->cpf);
			$comando->execute();
			$cliente->id = $pdo->lastInsertId();
			return $cliente;
		}


/*
		public function buscarPorId($id) {
			$query = "SELECT * FROM produtos WHERE id = :id";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->bindParam ("id", $id);
			$comando->execute();
			$resultado = $comando->fetch(PDO::FETCH_OBJ);
			return new Produto($resultado->id, $resultado->nome, $resultado->preco);
		}

		public function inserir(Produto $produto) {
			$query = "INSERT INTO produtos(nome, preco) VALUES (:nome, :preco)";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->bindParam(":nome", $produto->nome);
			$comando->bindParam(":preco", $produto->preco);
			$comando->execute();
			$produto->id = $pdo->lastInsertId();
			return $produto;
		}

		public function atualizar(Produto $produto) {
			$query = "UPDATE produtos SET nome = :nome, preco = :preco WHERE id = :id";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->bindParam(":nome", $produto->nome);
			$comando->bindParam(":preco", $produto->preco);
			$comando->bindParam(":id", $produto->id);
			$comando->execute();
		}

		public function deletar($id) {
			$query = "DELETE from produtos WHERE id = :id";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->bindParam(":id", $id);
			$comando->execute();
		}
*/
	}
?>
