require_relative "personagem"
require_relative "ui"

include Ui

character = Personagem.new

Ui::CreatePerson.create(character)