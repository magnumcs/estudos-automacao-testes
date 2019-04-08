Quando("eu faço o cadastro") do
    visit('/users/new')
    fill_in(id: 'user_name', with: 'bruno')
    find('#user_lastname').set('batista')
    find('#user_email').send_keys('brunobatista@gmail.com')

    fill_in(id: 'user_address', with: 'rua 12')
    find('#user_university').set('anhanguera')
    find('#user_profile').send_keys('qa')

    fill_in(id: 'user_gender', with: 'masculino')
    find('#user_age').set('28')
    sleep(2)
    click_on('Criar')
    click_on('input[value="criar"]')
end
  
Então("verifico se fui cadastrado") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
end