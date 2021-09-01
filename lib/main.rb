require_relative "personagem"
require_relative "ui"

include Ui
include Atributos 

character = Personagem.new

Ui::CreatePerson.create(character)