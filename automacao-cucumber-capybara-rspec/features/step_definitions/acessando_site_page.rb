Quando("acesso a url com objeto page") do
    @home = PaginaInicial.new
    @home.load
    sleep(2)

end
  
Então("verifico se estou na página inicial") do
    @url = 'http://automacaocombatista.herokuapp.com/treinamento/home'
    expect(page).to have_current_path(@url, url:true)
end
  