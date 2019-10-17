<?php

    class ColaboradorDAO{

        public function listar() {
			$query = "SELECT * FROM colaborador";
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

	}

?>
