Quando("entro no iframe e preencho os campos") do
    #mudando foco para o iframe
    visit('/mudancadefoco/iframe')
    # within_frame('id_do_iframe') do
    #     fill_in(id: 'first_name', with: 'bruno')
    #     fill_in(id: 'last_name', with: 'batista')
    # end
    sleep(2)
end
  
Quando("entro no modal e verifico o texto") do
    visit('/mudancadefoco/modal')
    find('a[href="#modal1"]').click
    within('#modal1') do
        texto = find('h4')
        expect(texto.text).to eql 'Modal Teste'
    end
    sleep(2)
    find('.modal-close').click
end
  