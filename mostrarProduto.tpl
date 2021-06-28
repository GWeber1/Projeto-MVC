<link href="styles/style.css" rel="stylesheet"/>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
<html lang="pt-BR">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>Relatório</title>
</head>
<body>
  <style>
  </style>
  <script>
    $(document).ready(function(){
      $("#btnBot1").on('click',function() {
        alert("Botão Teste");
      });
    })
  </script>
  <div>
    <img src="images/usinainfo.png" class="rounded-pill" align="right">
  </div>
  <br><br>
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
        <td><p align="center">{$produto->data_validade_produtos|date_format: "%d/%m/%Y"}</p></td>
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
  <br>
  <div align="center" id="btnBot1">
    <button class="btn btn-secondary">Clique aqui</button>
  </div>
  <br>
  <br>
</div>

</body>
</html>
