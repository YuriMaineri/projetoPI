<?php
    class Cliente
    {
        public $id;
        public $nome;
        public $cpf;
	public $telefone;

        function __construct($id, $nome, $cpf, $telefone)
        {
            $this->id = $id;
            $this->nome = $nome;
            $this->cpf = $cpf;
	        $this->telefone = $telefone;
        }
    }
?>

