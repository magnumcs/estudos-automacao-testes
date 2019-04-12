Quando("eu seleciono o mouse hover") do
    visit('iteracoes/mousehover')
    # find('.activator').hover
    find('.activator').hover.click
    sleep(2)
end
  