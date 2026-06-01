#language: pt

Funcionalidade: Tela de Autenticação

Como cliente da EBAC-SHOP
Quero fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a página de autenticação da EBAC-SHOP

Cenário: Autenticação com dados válidos
Quando eu informar um usuário válido
E informar uma senha válida
E clicar no botão de login
Então devo ser redirecionado para a tela de checkout

Cenário: Autenticação com usuário inválido
Quando eu informar um usuário inválido
E informar uma senha válida
E clicar no botão de login
Então deve exibir a mensagem "Usuário ou senha inválidos"

Cenário: Autenticação com senha inválida
Quando eu informar um usuário válido
E informar uma senha inválida
E clicar no botão de login
Então deve exibir a mensagem "Usuário ou senha inválidos"

Cenário: Autenticação com usuário e senha inválidos
Quando eu informar um usuário inválido
E informar uma senha inválida
E clicar no botão de login
Então deve exibir a mensagem "Usuário ou senha inválidos"





