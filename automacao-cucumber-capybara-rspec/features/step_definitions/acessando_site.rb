Quando("acesso a url") do
    visit('/treinamento/home')
    #sleep(5)
end

Então("eu verifico se estou na página correta.") do
    expect(page).to have_current_path('http://automacaocombatista.herokuapp.com/treinamento/home', url:true) 
end
