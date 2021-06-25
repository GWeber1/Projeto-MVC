<?php
include('vendor/autoload.php');
require("classes/product.php");

$smarty = new Smarty(); //variável que irá aplicar as configurações do Smarty e criar o template de chamada do PHP à view HTML.
$smarty->template_dir = "templates";
$smarty->compile_dir = "templates_c"; 
$smarty->config_dir = "configs";
$produtos = new Produtos(); //invocar classe Produtos
$showProducts = $produtos->MostraProdutos(); //Controller se encarrega de colocar ambos os SELECT em arrays (ShowProducts e ShowFornecedores)
$showFornecedores = $produtos->MostraFornecedores(); 
$smarty->assign("produtos", $showProducts); //Arrays serão levados para a view
$smarty->assign("fornecedores", $showFornecedores);

$smarty->display('mostrarProduto.tpl'); //criação do template
?>
