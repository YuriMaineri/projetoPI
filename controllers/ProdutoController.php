<?php

  class ProdutoController {

    public function listar($res) {
      $dao = new ProdutoDAO();
      $lista = $dao->listar();
      $res = $res->withJson($lista);
      $res = $res->withHeader("Content-type", "application/json");
      return $res;
    }
  }

?>
