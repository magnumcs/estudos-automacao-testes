Dado("eu tenho {int} laranjas.") do |_laranjas|
    @laranjas = _laranjas
end
  
Quando("eu como {int} laranjas.") do |_laranjasComidas|
    @laranjasComidas = _laranjasComidas
    @resultado = @laranjas - @laranjasComidas
end
  
Então("eu vejo quantas laranjas sobraram.") do
    expect(@resultado).to eq 8
    puts "Sobraram #{@resultado} laranjas"
end

Dado("eu sobraram {int} laranjas.") do |_restanteLaranjas|
    @restanteLaranjas = _restanteLaranjas
end
  
Quando("eu compro {int} laranjas.") do |_laranjasCompradas|
    @laranjasCompradas = _laranjasCompradas
    @resultadoFinal = @restanteLaranjas + @laranjasCompradas
end
  
Então("eu vejo quantas laranja totais eu tenho.") do
    expect(@resultadoFinal).to eq 13
    puts "Total de laranjas: #{@resultadoFinal}"
end
  
  