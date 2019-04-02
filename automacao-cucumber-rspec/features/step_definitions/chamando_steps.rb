Dado("eu tenho {int} laranjas no estoque.") do |_laranjas|
    @laranjas = _laranjas
end

Quando("eu amasso {int} laranjas") do |_amassadas|
    @amassadas = _amassadas
    @total = @laranjas - @amassadas
end

Então("eu verifico quantas laranjas sobraram no estoque.") do
    expect(@total).to eq 8
end

Quando("revendo {int} laranjas") do |_laranjasRevendidas|
    steps %Q{
        Dado eu tenho 10 laranjas no estoque.
    }
    @laranjasRevendidas = _laranjasRevendidas
    @resultado = @laranjas - @laranjasRevendidas
end

Então("eu verifico com quantas laranjas eu fiquei") do
    expect(@resultado).to eq 8
end
  