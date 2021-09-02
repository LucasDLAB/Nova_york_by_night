require_relative "personagem"
require_relative "ui"

include Ui

character = Personagem.new
Ui::CreatePerson.create(character)
character.personagem_atributos
character.distribuicao
character.personagem_habilidades
character.distribuicao_de_habilidades
puts "\e[H\e[2J"
Ui::CreatePerson.show(character)
character.pontos
character.pontos_habilidades
