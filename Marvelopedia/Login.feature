# encoding: utf-8
# language: pt  

Funcionalidade: Login


Contexto: 
Dado que esteja na tela inicial do aplicativo não logado


Cenário: Realizar login com sucesso
Quando inserir credenciais válidas 
E realizar o login
Entao devo visualizar a home da aplicação logada

Cenário: Receber mensagem ao tentar logar com email não cadastrado
Quando inserir credenciais utilizando um email não cadastrado
E realizar o login
Entao devo visualizar mensagem referente a usuário não encontrado

Cenário: Receber mensagem ao tentar logar com senha inválida 
Quando inserir credenciais utilizando uma senha inválida
E realizar o login
Entao devo visualizar mensagem referente a senha incorreta