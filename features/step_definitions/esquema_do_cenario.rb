Quando("eu multiplico minhas {int} pelo {int}") do |laranja, valor|
    @multiplicação = laranja * valor
end
  
Então("eu vejo qual {int} da multiplicação.") do |resultado|
    expect(@multiplicação).to eq resultado
end