<link href="styles/style.css" rel="stylesheet"/>
<html>
<head>
  <title>Relatório</title>
</head>
<body>
  <div class="container">
  <div class="row">
    <div class="col">
      <p align="center"><b>Produtos Cadastrados</b></p>
    </div>
  </div>
</div>
  <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col"><p align="center">#</p></th>
        <th scope="col"><p align="center">Nome</p></th>
        <th scope="col"><p align="center">Validade</p></th>
        <th scope="col"><p align="center">Fornecedor</p></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        {foreach from=$produtos item=produto}
        <th scope="row"><p align="center">{$produto->id_produtos}</p></th>
        <td><p align="center">{$produto->nome_produtos}</p></td>
        <td><p align="center">{$produto->data_validade_produtos}</p></td>
        <td><p align="center">{$produto->nome_fornecedores}</p></td>
        </tr>
        {/foreach}
    </tbody>
  </table>
  <div class="container">
  <div class="row">
    <div class="col">
      <p align="center"><b>Fornecedores Cadastrados</b></p>
    </div>
  </div>
</div>
  <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col" ><p align="center">#</p></th>
        <th scope="col"><p align="center">Nome</p></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        {foreach from=$produtos item=produto}
        <th scope="row" text-align="center"><p align="center">{$produto->id_fornecedores}</p></th>
        <td><p align="center">{$produto->nome_fornecedores}</p></td>
      </tr>
      {/foreach}
    </tbody>
  </table>
</body>
</html>
