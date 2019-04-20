Quando("eu faço um upload de arquivo") do
    visit('/outros/uploaddearquivos')
    @foto = File.join(Dir.pwd, 'features/example.png')
    attach_file('upload', @foto, make_visible: true)
    sleep(2)
end