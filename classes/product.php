<?php
use Opis\Database\Database;
use Opis\Database\Connection;
class Produtos {

    // include('vendor/autoload.php');

  public function MostraProdutos() {

      $connection = new Connection( //Conexão com o banco de dados
          'mysql:host=localhost;dbname=gabrielusina_teste',
          'gabrielusina_gabrielusina',
          'mdD=i0B{q-)c'
      );
      $db = new Database($connection);

      $result_produtos = $db->from('produtos') /*SELECT id_produtos, nome_produtos, data_validade_produtos, nome_fornecedores, id_fornecedores FROM
                                                produtos; */
                        ->select(['id_produtos', 'nome_produtos', 'data_validade_produtos', 'nome_fornecedores', 'id_fornecedores'])
                        ->all();

     $showProducts = $result_produtos;
     // Descomente as linhas echo abaixo caso queira realizar um teste na classe
    //echo 'Nome do Produto: ' . $this->nome_produtos, '<br>';
    //echo 'Data de Validade: ' . $this->data_validade_produtos, '<br>';
    //echo '<br>';

    return $showProducts; //variável que retorna dados ao controlador
  }

  public function MostraFornecedores() { //Conexão com o banco de dados
    $connection = new Connection(
        'mysql:host=localhost;dbname=gabrielusina_teste',
        'gabrielusina_gabrielusina',
        'mdD=i0B{q-)c'
    );
    $db = new Database($connection);

    $result_fornecedores = $db->from('produtos') /*SELECT id_fornecedores, nome_fornecedores FROM produtos */
                                ->select(['id_fornecedores', 'nome_fornecedores'])
                                ->all();


    $showFornecedores = $result_fornecedores; 

    return $showFornecedores; //variável que retorna dados ao controlador
  }
}
