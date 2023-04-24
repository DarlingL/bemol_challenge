# encoding: utf-8
# language: pt  

Funcionalidade: Checkout

Contexto:
Dado que esteja logado na aplicação

Esquema do Cenário: Realizar a compra de Quadrinho
Quando pesquisar "<Quadrinho>" adicionando "<Quantidade>" ao carrinho 
E realizar o pagamento inserindo dados de um "cartão válido"
Entao devo visualizar a mensagem de compra finalizada

Exemplos:
|Quadrinho                        | Quantidade |
|1602 (2003) #6                   | 1          |
|100th Anniversary Special (2014) | 3          |
|Spider-Man (1990) #30            | 7          |

Cenário: Realizar a compra de Quadrinho a partir do carrinho
Dado que tenha itens adicionados anteriormente no carrinho 
Quando acessar o carrinho 
E realizar o pagamento inserindo dados de um "cartão válido"
Entao devo visualizar a mensagem de compra finalizada

Cenário: Erro ao tentar realizar pagamento
Dado que tenha itens adicionados anteriormente no carrinho 
Quando acessar o carrinho 
Mas tentar realizar o pagamento inserindo dados de um "cartão inválido"
Entao deve ser exibida mensagem de erro no pagamento