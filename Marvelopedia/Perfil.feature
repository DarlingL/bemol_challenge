# encoding: utf-8
# language: pt  

Funcionalidade: Perfil

Contexto:
Dado que esteja logado na aplicação


Cenário: Acessar a área de perfil e suas funções
Quando acessar o opção Perfil na home
Entao deve ser exibida as quatros funções do perfil

Cenário: Mudar a senha do aplicativo
Dado que esteja na área de perfil
Quando acessar a opção de senha
E alterar após inserir uma nova senha
Entao deve exibir a mensagem de confirmação da nova senha

Cenário: Realizar Logout da aplicação
Dado que esteja na área de perfil
Quando confirmar após selecionar a opção de Logout
Entao devo ser direcionado para tela inicial do aplicativo não logado