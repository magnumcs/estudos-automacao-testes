Quando("clico em botões") do
    visit('/')
    click_on('Começar Automação Web')
    visit('/buscaelementos/botoes')
    click_button(class: 'btn waves-light')
    find('a[onclick="ativaedesativa2()"]').click
    find('a[onclick="ativaedesativa2()"]').double_click
    find('a[onclick="ativaedesativa2()"]').right_click
    visit('/')
    click_link('Github')
    sleep(5)
end