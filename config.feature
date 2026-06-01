#language: pt

Funcionalidade: Configuração de produto na EBAC-SHOP

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que o usuário acessou a página de um produto

Cenário: Validar obrigatoriedade da seleção de cor
E selecionou um tamanho
E informou a quantidade "1"
Quando clicar no botão "Adicionar ao carrinho"
Então o sistema deve exibir a mensagem "Selecione uma cor"
E o produto não deve ser adicionado ao carrinho

Cenário: Validar obrigatoriedade da seleção de tamanho
E selecionou uma cor
E informou a quantidade "1"
Quando clicar no botão "Adicionar ao carrinho"
Então o sistema deve exibir a mensagem "Selecione um tamanho"
E o produto não deve ser adicionado ao carrinho

Cenário: Validar obrigatoriedade da quantidade
E selecionou uma cor
E selecionou um tamanho
Quando clicar no botão "Adicionar ao carrinho"
Então o sistema deve exibir a mensagem "Informe a quantidade"
E o produto não deve ser adicionado ao carrinho

Cenário: Validar limite máximo de produtos por venda
E selecionou uma cor
E selecionou um tamanho
Quando informar a quantidade "11"
Então o sistema deve exibir a mensagem "Quantidade máxima permitida é 10"

Cenário: Adicionar produto ao carrinho com sucesso
E selecionou uma cor
E selecionou um tamanho
Quando informar a quantidade "2"
E clicar no botão "Adicionar ao carrinho"
Então o produto deve ser adicionado ao carrinho com sucesso

Cenário: Limpar configurações do produto
E selecionou uma cor
E selecionou um tamanho
E informou a quantidade "2"
Quando clicar no botão "Limpar"
Então a cor deve voltar ao estado original
E o tamanho deve voltar ao estado original
E a quantidade deve voltar ao estado original

