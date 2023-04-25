Dado('que esteja na tela de pesquisa do Correios') do
    @correiospage = PageCorreios.new
    @correiospage.load
end

Quando('realizar a pesquisar {string}') do |string|
    @correiospage.pesquisa(string)
end

Entao('deve exibir {string} como resultado da pesquisa') do |string|
    @correiospage.resultado_pesquisa(string)
end