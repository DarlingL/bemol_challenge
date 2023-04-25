class PageCorreios < SitePrism::Page
    set_url'http://www.buscacep.correios.com.br'

    element :campo_pesquisa, :id, 'endereco' 
    element :botao_buscar, :id, 'btn_pesquisar'
    

    def pesquisa(string)
        campo_pesquisa.set string
        botao_buscar.click
    end

    def resultado_pesquisa(string)
        page.has_content?(string)
    end
end