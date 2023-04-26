require 'rspec'
class PageTrivago < SitePrism::Page
    set_url'http://www.trivago.com.br'

    element :campo_pesquisa, :id, 'input-auto-complete' 
    element :hotel_opcao, :css, '#__next > div.min-h-screen > div.mb-6.bg-gradient-to-br.from-white.to-grey-200 > section > div.mx-auto.Wrapper_box__4K_5d.px-4.\32 xs\:px-5.l\:px-10.\32 xl\:px-5 > div.fresnel-container.fresnel-greaterThanOrEqual-2xl > ul > li:nth-child(2) > span > label'
    element :botao_buscar, :css, 'button[data-testid="search-button"]'
    element :total_estadias, :xpath, '//*[@id="__next"]/div[1]/main/div[5]/div[3]/div/div[2]/div[1]/div/div[2]/div[2]/div/div/div[1]/span[2]/strong'
    element :orderna_selecao, :id, 'sorting-selector'

    def pesquisa(string)
        campo_pesquisa.set string
        hotel_opcao.click
        botao_buscar.click
    end

    def ordenar_resultado
        #wip
    end
end
