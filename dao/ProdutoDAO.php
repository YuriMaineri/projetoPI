<?php

  class ProdutoDAO {

    public function listar() {
      $query = "SELECT * FROM produto";
      $pdo = PDOFactory::getConexao();
      $comando = $pdo->prepare($query);
      $comando->execute();
      $produto = array();
      while($row = $produto->fetch(PDO::FETCH_OBJ)) {
        $produto[] = new Produto($row->id,$row->nome,$row->valor,$row->status);
      }
      return $produto;
    }
  }
?>
