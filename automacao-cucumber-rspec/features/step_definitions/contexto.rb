Dado("que eu tenho {int} laranjas na bolsa.") do |_laranjas|
    @laranjas = _laranjas
end
  
Quando("eu coloco {int} laranjas na bolsa") do |_laranjasColocadas|
    @laranjasColocadas = _laranjasColocadas
    @resultado = @laranjas + @laranjasColocadas
end
  
Então("eu verifico se o total de laranjas na bolsa é {int}.") do |_verificaLaranjas|
    @verificaLaranjas = _verificaLaranjas
    expect(@resultado).to eq @verificaLaranjas
end

Quando("eu tiro {int} laranjas da bolsa") do |_laranjasTiradas|
    # steps %Q{
    #     Quando eu coloco 2 laranjas na bolsa
    # }
    # puts "Laranjas na bolsa = #{@resultado}"
    @laranjasTiradas = _laranjasTiradas
    @resultado = @laranjas - @laranjasTiradas
end

Então("eu verifico com quantas laranjas eu fiquei na bolsa.") do
    expect(@resultado).to eq 8
end
  