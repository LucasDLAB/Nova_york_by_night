require_relative "personagem"
require_relative "ui"

include Ui

character = Personagem.new
character.personagem_habilidades

character.pontos_habilidades