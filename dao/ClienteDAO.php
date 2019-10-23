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

		public function atualizar(Cliente $cliente) {
			$query = "UPDATE cliente SET nome = :nome, cpf = :cpf WHERE id = :id";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->bindParam(":nome", $cliente->nome);
			$comando->bindParam(":cpf", $cliente->cpf);
			$comando->bindParam(":id", $cliente->id);
			$comando->execute();
		}

		public function deletar($id) {
			$query = "DELETE from cliente WHERE id = :id";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->bindParam(":id", $id);
			$comando->execute();
		}

		public function buscarPorId($id) {
			$query = "SELECT * FROM cliente WHERE id = :id";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->bindParam ("id", $id);
			$comando->execute();
			$resultado = $comando->fetch(PDO::FETCH_OBJ);
			return new Cliente($resultado->id, $resultado->nome, $resultado->cpf);
		}
	}
?>
