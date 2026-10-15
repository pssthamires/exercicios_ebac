#language: pt

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que eu esteja na página de um produto

  Cenário: Impedir inclusão sem selecionar a cor
    Quando eu configurar o tamanho e a quantidade sem selecionar uma cor
    E solicitar a inclusão no carrinho
    Então o sistema deve informar que a cor é obrigatória
    E o produto não deve ser adicionado ao carrinho

  Cenário: Impedir inclusão sem selecionar o tamanho
    Quando eu configurar a cor e a quantidade sem selecionar um tamanho
    E solicitar a inclusão no carrinho
    Então o sistema deve informar que o tamanho é obrigatório
    E o produto não deve ser adicionado ao carrinho

  Cenário: Impedir inclusão sem informar a quantidade
    Quando eu selecionar uma cor e um tamanho sem informar a quantidade
    E solicitar a inclusão no carrinho
    Então o sistema deve informar que a quantidade é obrigatória
    E o produto não deve ser adicionado ao carrinho

  Cenário: Impedir a compra de mais de 10 produtos
    Quando eu selecionar uma cor e um tamanho e informar a quantidade "11"
    E solicitar a inclusão no carrinho
    Então o sistema não deve permitir a inclusão de 11 produtos

  Cenário: Adicionar produto ao carrinho
    Quando eu selecionar uma cor, um tamanho e informar a quantidade "2"
    E solicitar a inclusão no carrinho
    Então o produto deve ser adicionado ao carrinho

  Cenário: Limpar as configurações do produto
    Dado que eu tenha selecionado uma cor e um tamanho e informado a quantidade "2"
    Quando eu solicitar a limpeza das configurações
    Então a cor deve voltar ao estado original
    E o tamanho deve voltar ao estado original
    E a quantidade deve voltar ao estado original
