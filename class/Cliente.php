<?php
    class Cliente
    {
        public $id;
        public $nome;
        public $cpf;

        function __construct($id, $nome, $cpf)
        {
            $this->id = $id;
            $this->nome = $nome;
            $this->cpf = $cpf;
        }
    }
?>
