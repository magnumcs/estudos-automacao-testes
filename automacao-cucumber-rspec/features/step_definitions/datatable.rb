Dado("que eu tenho umas laranjas") do |table|
    @laranja =  table.rows_hash['laranja'].to_i
end

Quando("eu corto {int} laranjas") do |int|
    @cortar = int
    @total = @laranja - @cortar
end

Então("eu verifico quantas sobraram inteiras") do
    expect(@total).to eq 8
end

Dado("que tenho umas laranjas") do |table|
    table.hashes.each do |valor|
        @laranjas = valor['laranja'].to_i
    end
end

Quando("eu chupo {int} laranjas") do |int|
    @chupei = int
    @resultado = @laranjas - @chupei
end

Então("eu verifico quantas laranjas sobraram") do
    expect(@resultado).to eq 8
end
  