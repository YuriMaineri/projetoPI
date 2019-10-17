<?php

    class ColaboradorController {

        public function listar($request, $response, $args) {
            $dao = new ColaboradorDAO();
            $lista = $dao->listar();
            $response = $response->withJson($lista);
            $response = $response->withHeader("Content-type", "application/json");
            return $response;
        }

        public function inserir($request, $response, $args) {
            $var = $request->getParsedBody();
            $colaborador = new Colaborador(0,$var['nome'],$var['login'],$var['senha'],$var['email']);
            $dao = new ColaboradorDAO();
            $colaborador = $dao->inserir($colaborador);
            $response = $response->withJson($colaborador);
            $response = $response->withHeader('Content-type', 'application/json');
            $response = $response->withStatus(201);
            return $response;
        }
    }
?>