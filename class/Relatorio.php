<?php

  class Relatorio {

    private $itensQuantidade;
    private $itensValor;
    private $pagamentoValor;
    private $produtoNome;
    private $produtoValor;
    private $pedidoValor;
    private $pedidoStatus;

    public function __construct($itensQuantidade, $itensValor, $pagamentoValor, $produtoNome, $produtoValor, $pedidoValor,$pedidoStatus){

      $this->$itensQuantidade = $itensQuantidade;
      $this->$itensValor = $itensValor;
      $this->$pagamentoValor = $pagamentoValor;
      $this->$produtoNome = $produtoNome;
      $this->$produtoValor = $produtoValor;
      $this->$pedidoValor = $pedidoValor;
      $this->$pedidoStatus = $pedidoStatus;
    }
  }
?>
