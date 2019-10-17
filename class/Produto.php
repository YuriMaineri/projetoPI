<?php

  class Produto{

    private $nome;
    private $valor;
    private $status;

    function __construct($nome, $valor, $status){
      $this->nome = $nome;
      $this->valor = $valor;
      $this->status = $status;
    }

  }

?>
