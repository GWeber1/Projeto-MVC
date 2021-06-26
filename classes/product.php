<?php
use Opis\Database\Database;
use Opis\Database\Connection;
class Produtos {

    // include('vendor/autoload.php');

  public function MostraProdutos() {

      $connection = new Connection(
          'mysql:host=localhost;dbname=gabrielusina_teste',
          'gabrielusina_gabrielusina',
          'mdD=i0B{q-)c'
      );
      $db = new Database($connection);

      $result_produtos = $db->from('produtos')
                        ->select(['id_produtos', 'nome_produtos', 'data_validade_produtos', 'nome_fornecedores', 'id_fornecedores'])
                        ->all();

     $showProducts = $result_produtos;
     // $showProducts = "merda";
    //echo 'Nome do Produto: ' . $this->nome_produtos, '<br>';
    //echo 'Data de Validade: ' . $this->data_validade_produtos, '<br>';
    //echo '<br>';

    return $showProducts;
  }

  public function MostraFornecedores() {
    $connection = new Connection(
        'mysql:host=localhost;dbname=gabrielusina_teste',
        'gabrielusina_gabrielusina',
        'mdD=i0B{q-)c'
    );
    $db = new Database($connection);

    $result_fornecedores = $db->from('produtos')
                                ->select(['id_fornecedores', 'nome_fornecedores'])
                                ->all();


    $showFornecedores = $result_fornecedores;

    return $showFornecedores;
  }

  public function MostraRegioes() {
    $connection = new Connection(
      'mysql:host=localhost;dbname=gabrielusina_teste',
      'gabrielusina_gabrielusina',
      'mdD=i0B{q-)c'
    );
    $db = new Database($connection);

    $result_regioes = $db->from('cidade_estado')
    ->select(['id_cidade_estado', 'estado', 'cidade'])
    ->all();

    $showRegioes = $result_regioes;

    return $showRegioes;
  }
}

//  public function MostraFornecedores() {
//    $showFornecedores = $this->id_fornecedores . $this->nome_fornecedores;

    //echo 'Nome do Fornecedor: . $this->nome_fornecedores, '<br>';

  //  return $showFornecedores;
