<?php

	class Colaborador {
		public $id;
		public $nome;
		public $login;
		public $senha;
		public $email;

		function __construct($id, $nome, $login ,$senha, $email){
			$this->id = $id;
			$this->nome = $nome;
			$this->login = $login;
			$this->senha = $senha;
			$this->email = $email;
		}		
	}
?>
