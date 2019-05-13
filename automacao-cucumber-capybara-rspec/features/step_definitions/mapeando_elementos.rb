Quando("eu preencho o formulário.") do
  @mapeando = MapeandoElementoPage.new
  @mapeando.load
  @mapeando.preencher
  sleep(2)
end
