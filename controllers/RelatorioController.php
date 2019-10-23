<?php

  class RelatorioController {

    public function gerarRelatorio($request, $response, $args) {
        $dao = new RelatorioDAO();
        $gera = $dao->gerarRelatorio();
        $response = $response->withJson($gera);
        $response = $response->withHeader("Content-type", "application/json");
        return $response;
    }
  }
 ?>
