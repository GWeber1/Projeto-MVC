<?php
include('vendor/autoload.php');
require("classes/product.php");

ini_set('default_charset', 'UTF-8');
$smarty = new Smarty();
$smarty->template_dir = "templates";
$smarty->compile_dir = "templates_c";
$smarty->config_dir = "configs";
$produtos = new Produtos();
$showProducts = $produtos->MostraProdutos();
$showFornecedores = $produtos->MostraFornecedores();
$showRegioes = $produtos->MostraRegioes();
$smarty->assign("produtos", $showProducts);
$smarty->assign("fornecedores", $showFornecedores);
$smarty->assign("regioes", $showRegioes);

$smarty->display('mostrarProduto.tpl');
?>
