<link href="styles/style.css" rel="stylesheet"/>
<html lang="pt-BR">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
        <th scope="col"><p align="center">ID</p></th>
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
        <th scope="col" ><p align="center">ID</p></th>
        <th scope="col"><p align="center">Nome</p></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        {foreach from=$fornecedores item=produto}
        <th scope="row" text-align="center"><p align="center">{$produto->id_fornecedores}</p></th>
        <td><p align="center">{$produto->nome_fornecedores}</p></td>
      </tr>
      {/foreach}
    </tbody>
  </table>
  <div class="container">
  <div class="row">
    <div class="col">
      <p align="center"><b>Regiões Cadastradas</b></p>
    </div>
  </div>
</div>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col"><p align="center">ID</p></th>
      <th scope="col"><p align="center">Estado</p></th>
      <th scope="col"><p align="center">Cidade</p></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      {foreach from=$regioes item=produto}
      <th scope="row"><p align="center">{$produto->id_cidade_estado}</p></th>
      <td><p align="center">{$produto->estado}</p></td>
      <td><p align="center">{$produto->cidade}</p></td>
      </tr>
      {/foreach}
  </tbody>
</table>
</body>
</html>
