require_relative 'atributos'
require_relative 'habilidades'

class Personagem

	include Atributos,Skills

	attr_accessor :nome_personagem, :nome_jogador, :vocacao, :idade, :peso, :genero, :altura,
  :forca, :vigor, :agilidade, :expressao, :inteligencia, :conhecimento, :pontos_para_distribuir,
  :abrir_fechadura, :acrobacia, :adestrar_animais, :agarrar, :alquimia, :atirar, :armadilha, :astronomia,
  :banimento, :computacao, :conjurar, :diplomacia, :direcao, :discursar, :erudicao, :escalar, :esfolar, :engenharia,
  :engenharia, :esquivar, :exorcismo, :ferraria, :furtividade, :furtar, :golpear, :hipnose, :interpetrar, :intuicao,
  :intimidar, :investigar, :nadar, :necromacia, :natureza, :mantra, :meditacao, :medicina, :mineracao, :ocultismo,
  :panteologia, :primeiros_socorros, :provocar, :proteger, :rastrear, :resistencia, :robotica, :runas, :seduzir,
  :sobrevivencia, :telepatia, :distribuir_habilidades

  def initialize 
    @forca = 0
    @vigor = 0
    @agilidade = 0
    @expressao = 0
    @inteligencia = 0
    @conhecimento = 0 
    @pontos_para_distribuir = 50
    @abrir_fechadura = 0 
    @acrobacia = 0
    @adestrar_animais = 0
    @agarrar = 0 
    @alquimia = 0 
    @atirar = 0
    @armadilha = 0
    @astronomia = 0
    @banimento = 0
    @computacao = 0
    @conjurar = 0 
    @diplomacia = 0
    @direcao = 0
    @discursar = 0
    @erudicao = 0
    @escalar = 0
    @esfolar = 0
    @engenharia = 0
    @esquivar = 0
    @exorcismo = 0
    @ferraria = 0
    @furtividade = 0
    @furtar = 0
    @golpear = 0
    @hipnose = 0
    @interpetrar = 0
    @intuicao = 0
    @intimidar = 0 
    @investigar = 0 
    @nadar = 0
    @necromacia = 0
    @natureza = 0
    @mantra = 0
    @meditacao = 0
    @medicina = 0
    @mineracao = 0 
    @ocultismo = 10
    @panteologia = 0 
    @primeiros_socorros = 0
    @provocar = 0
    @proteger = 0
    @rastrear = 0
    @resistencia = 0
    @robotica = 0
    @runas = 0
    @seduzir = 0
    @sobrevivencia = 0
    @telepatia = 0
    @distribuir_habilidades = 50
	end

	def personagem_atributos
    @personagem_atributos = self.instance_variables
	end     

  def personagem_habilidades
    @personagem_habilidades = self.instance_variables
  end                        
end

