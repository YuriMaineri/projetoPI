<?php

    class ColaboradorDAO{

        public function listar() {
			$query = "SELECT * FROM `colaborador`";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->execute();
			$colaborador = array();
			while($row = $comando->fetch(PDO::FETCH_OBJ)) {
				$colaborador[] = new Colaborador($row->id,$row->nome,$row->login,$row->senha,$row->email);
			}
			return $colaborador;
		}

		public function inserir(Colaborador $colaborador) {
			$query = "INSERT INTO colaborador(nome, login, senha, email) VALUES (:nome, :login, :senha, :email)";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->bindParam(":nome", $colaborador->nome);
			$comando->bindParam(":login", $colaborador->login);
			$comando->bindParam(":senha", $colaborador->senha);
			$comando->bindParam(":email", $colaborador->email);
			$comando->execute();
			$colaborador->id = $pdo->lastInsertId();
			return $colaborador;
		}

    public function atualizar(Colaborador $colaborador) {
			$query = "UPDATE colaborador SET nome = :nome, login = :login, senha = :senha, email = :email WHERE id = :id";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->bindParam(":nome", $colaborador->nome);
			$comando->bindParam(":login", $colaborador->login);
      $comando->bindParam(":senha", $colaborador->senha);
      $comando->bindParam(":email", $colaborador->email);
			$comando->bindParam(":id", $colaborador->id);
			$comando->execute();
		}

    public function deletar($id) {
			$query = "DELETE from colaborador WHERE id = :id";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->bindParam(":id", $id);
			$comando->execute();
		}

		public function buscarPorId($id) {
			$query = "SELECT * FROM colaborador WHERE id = :id";
			$pdo = PDOFactory::getConexao();
			$comando = $pdo->prepare($query);
			$comando->bindParam ("id", $id);
			$comando->execute();
			$resultado = $comando->fetch(PDO::FETCH_OBJ);
			return new Colaborador($resultado->id, $resultado->nome, $resultado->login, $resultado->senha, $resultado->email);
		}

	}

?>
