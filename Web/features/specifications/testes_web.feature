# encoding: utf-8
# language: pt  

Funcionalidade: Testes Webs

Esquema do Cenário: Realizar uma pesquisa no site do Correios
Dado que esteja na tela de pesquisa do Correios
Quando realizar a pesquisar "<Pesquisa>"
Entao deve exibir "<Resultado>" como resultado da pesquisa

Exemplos:
|Pesquisa        | Resultado          |
|69005-040       |Rua Miranda Leão    |
|Lojas Bemol     |Rua Miranda Leão, 41|
