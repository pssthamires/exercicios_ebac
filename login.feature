#language: pt

Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que eu esteja na página de autenticação da EBAC-SHOP

  Cenário: Login com dados válidos
    Quando eu informar um usuário e uma senha válidos
    E solicitar o login
    Então devo ser direcionado para a tela de checkout

  Cenário: Login com usuário inválido
    Quando eu informar um usuário inválido e uma senha válida
    E solicitar o login
    Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos"

  Cenário: Login com senha inválida
    Quando eu informar um usuário válido e uma senha inválida
    E solicitar o login
    Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos"

  Cenário: Login com usuário e senha inválidos
    Quando eu informar um usuário e uma senha inválidos
    E solicitar o login
    Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos"
