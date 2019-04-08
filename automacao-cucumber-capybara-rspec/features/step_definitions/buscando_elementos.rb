Quando("acesso a url de botões") do
    visit('/buscaelementos/botoes')
end

Então("verifico se encontrei os elementos") do
    #all busca todos os elementos que contemplam o all
    page.all(:css, '.btn')
    #busca elemento mapeado pelo id
    find('#teste')
    find_by_id('teste')
    #busca por botão
    find_button(class: 'btn waves-light')
    #busca o primeiro elemento que contenha o elemento mapeado
    first('.btn')
    #busca por algum link
    find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
end
  