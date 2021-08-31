require_relative "personagem"

pers = Personagem.new
pers.criacao
pers.distribuicao


puts "\e[H\e[2J"
puts "Nome do personagem e jogador: #{pers.nome_personagem} / #{pers.nome_jogador} #{' '*5} Vocação: #{pers.vocacao}"
puts "Idade: #{pers.idade} #{' '*5} Peso: #{pers.peso} #{' '*5} Altura: #{pers.altura}"
puts "Sexo: #{pers.genero}"
puts pers.pontos
