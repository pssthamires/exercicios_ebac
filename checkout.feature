#language: pt

Funcionalidade: Tela de cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que eu esteja na tela de cadastro do checkout

  Cenário: Concluir cadastro com dados válidos
    Quando eu preencher todos os campos obrigatórios com dados válidos
    E solicitar a finalização do cadastro
    Então o cadastro deve ser concluído com sucesso

  Esquema do Cenário: Validar formato do e-mail no cadastro
    Quando eu preencher os campos obrigatórios com dados válidos
    E informar o e-mail "<email>"
    E solicitar a finalização do cadastro
    Então o sistema deve apresentar o resultado "<resultado>"

    Exemplos:
      | email                 | resultado                       |
      | thamires@email.com    | cadastro aceito                 |
      | maria.souza@gmail.com | cadastro aceito                 |
      | thamires@email        | mensagem de erro                 |
      | thamires.com.br       | mensagem de erro                 |
      | @email.com            | mensagem de erro                 |
      | thamires@             | mensagem de erro                 |

  Cenário: Impedir cadastro com campos obrigatórios vazios
    Quando eu tentar finalizar o cadastro sem preencher os campos obrigatórios
    Então o sistema deve exibir uma mensagem de alerta
    E o cadastro não deve ser concluído
