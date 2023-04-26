# encoding: utf-8
# language: pt  

Funcionalidade: Testes Web

Esquema do Cenário: Realizar uma pesquisa no site do Correios
Dado que esteja na tela de pesquisa do Correios
Quando realizar a pesquisar "<Pesquisa>"
Entao deve exibir "<Resultado>" como resultado da pesquisa

Exemplos:
|Pesquisa        | Resultado          |
|69005-040       |Rua Miranda Leão    |
|Lojas Bemol     |Rua Miranda Leão, 41|

@wip
Cenário: Realizar uma pesquisa no trivago e ordenar por Avaliação e Sugestões
Dado que eu pesquise "Manaus" no trivago
Quando ordernar por Avaliação e Sugestões
Entao deve exibir o nome, preço e avaliação