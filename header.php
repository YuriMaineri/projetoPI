<?php
//Uso do SlimFramework
require "vendor/autoload.php";

//Configuracao Banco de dados
require_once "db/PDOFactory.php";

//Classes
require_once "class/Cliente.php";
require_once "class/Colaborador.php";
require_once "class/Produto.php";

//DAO
require_once "dao/ClienteDAO.php";
require_once "dao/ColaboradorDAO.php";
require_once "dao/ProdutoDAO.php";

//Controllers
require_once "controllers/ClienteController.php";
require_once "controllers/ColaboradorController.php";
//require_once "controllers/";
