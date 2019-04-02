Before do
    puts "Estou sendo executado antes de cada cenário."
    @soma = 5 + 5
end

After do
    puts "Estou sendo executado depois de cada cenário."
end

Before '@comeco' do
    puts "rodei apenas no cenário com tag começo."
end

After '@final' do
    puts "rodei apenas no cenário com tag final."
end

