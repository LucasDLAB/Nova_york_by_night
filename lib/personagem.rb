require_relative 'atributos'

class Personagem

	include Atributos

	attr_accessor :character_name, :nome_jogador, :vocacao, :idade, :peso, :genero, :altura, :forca, :vigor, :agilidade, :expressao, :inteligencia, :conhecimento, :pontos_para_distribuir

  def initialize 
    @forca = 0
    @vigor = 0
    @agilidade = 0
    @expressao = 0
    @inteligencia = 0
    @conhecimento = 0 
    @pontos_para_distribuir = 50
	end

	def personagem_atributos
    self.instance_variables
	end                            
end

