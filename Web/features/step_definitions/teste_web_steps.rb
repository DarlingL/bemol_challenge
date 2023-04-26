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

Dado('que eu pesquise {string} no trivago') do |string|
    @trivagopage = PageTrivago.new
    @trivagopage.load
    @trivagopage.pesquisa(string)
end

Quando('ordernar por Avaliação e Sugestões') do
    @trivagopage.ordenar_resultado
end

Entao('deve exibir o nome, preço e avaliação') do
    #wip
end