<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
<html>
<head>
  <title>Teste</title>
</head>
<body>
  <div class="card">
    <div class="card-body">
      <div class="container", align="center">
        <div class="col">
          <strong>Produtos Cadastrados</strong>
          <div text-align="center">
          <!-- Chamada do primeiro Array) -->
            {foreach from=$produtos item=produto}
            <!-- {$produto|var_dump} -->
            <br>{$produto->id_produtos}.{$produto->nome_produtos}<br/>
            Data de Validade: {$produto->data_validade_produtos}<br>
            Fornecedor: {$produto->nome_fornecedores}<br>

            {/foreach}
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="card">
  <div clasd="card-body">
    <div class="container">
      <div class="col" align="center">
        <Strong>Fornecedores Cadastrados</Strong>
        <div text-align="center">
        <!--Chamada do segundo array -->
            <br>{foreach from=$produtos item=produto}
              {$produto->id_fornecedores}.{$produto->nome_fornecedores}<br />
            {/foreach}
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
