<?php

  class RelatorioDAO {

    public function gerarRelatorio() {
      $query = "SELECT itens_pedido.quantidade, itens_pedido.valor,
      pagamento.valor,
      produto.nome, produto.valor,
      pedido.valor_total, pedido.status
      FROM `itens_pedido`
      join `pagamento` on itens_pedido.id_pagamento = pagamento.id
      join `produto` on itens_pedido.id_produto = produto.id
      join `pedido` on itens_pedido.id_pedido = pedido.id";

      $pdo = PDOFactory::getConexao();
      $cmd = $pdo->prepare($query);
      $cmd->execute();
      $relatorio = array();
      while($row = $relatorio->fetch(PDO::FETCH_OBJ)) {
        $relatorio[] = new Relatorio($row->itensQuantidade,$row->itensValor,$row->pagamentoValor,$row->produtoNome,$row->produtoValor,$row->pedidoValor,$row->pedidoStatus);
      }
      return $relatorio;
    }
  }

?>
