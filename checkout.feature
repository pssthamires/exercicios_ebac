Funcionalidade: Cadastro no checkout

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que eu esteja na tela de cadastro do checkout

  Esquema do Cenário: Cadastro com dados válidos
    Quando eu preencher o campo nome com "<nome>"
    E preencher o campo sobrenome com "<sobrenome>"
    E preencher o campo país com "<pais>"
    E preencher o campo endereço com "<endereco>"
    E preencher o campo cidade com "<cidade>"
    E preencher o campo CEP com "<cep>"
    E preencher o campo telefone com "<telefone>"
    E preencher o campo e-mail com "<email>"
    E clicar no botão "Finalizar Cadastro"
    Então o cadastro deve ser concluído com sucesso

    Exemplos:
      | nome    | sobrenome | pais  | endereco         | cidade      | cep       | telefone      | email                |
      | Thamires| Silva      | Brasil| Rua das Flores 10| São Paulo   | 06300-000 | 11999999999   | thamires@email.com   |
      | Maria   | Souza      | Brasil| Av Brasil 200    | Rio de Janeiro | 22000-000 | 21988888888 | maria@email.com      |

  Esquema do Cenário: Cadastro com e-mail inválido
    Quando eu preencher todos os campos obrigatórios
    E informar o e-mail "<email>"
    E clicar no botão "Finalizar Cadastro"
    Então o sistema deve exibir a mensagem de erro "E-mail inválido"

    Exemplos:
      | email              |
      | thamires@email     |
      | thamires.com.br    |
      | @email.com         |
      | thamires@          |

  Esquema do Cenário: Cadastro com campos obrigatórios vazios
    Quando eu deixar o campo "<campo>" vazio
    E clicar no botão "Finalizar Cadastro"
    Então o sistema deve exibir a mensagem de alerta "Campo obrigatório"

    Exemplos:
      | campo        |
      | nome         |
      | sobrenome    |
      | país         |
      | endereço     |
      | cidade       |
      | CEP          |
      | telefone     |
      | e-mail       |