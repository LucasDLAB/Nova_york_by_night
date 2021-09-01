require_relative 'atributos'

class Personagem

	include Atributos

	attr_accessor :nome_personagem, :nome_jogador, :vocacao, :idade, :peso, :genero, :altura, :forca, :vigor, :agilidade, :expressao, :inteligencia, :conhecimento, :pontos_para_distribuir

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
    @personagem_atributos = self.instance_variables
	end

	def criacao
		while true
			print "Digite o nome do seu personagem: "
			@nome_personagem = gets.chomp.to_s
			while true
				print "Tem certeza que deseja selecionar o nome #{@nome_personagem} [S/N]? "
				conf = gets.chomp.to_s.upcase
				if conf == 'S' or conf == 'N'
					break
				else
					puts "Digite S para sim ou N para não"
				end
			end
			if conf == 'S'
				break
			end
		end


		while true
			print "Digite o nome do jogador: "
			@nome_jogador= gets.chomp.to_s
			while true
				print "Tem certeza que o nome do jogador é #{@nome_personagem} [S/N]? "
				conf = gets.chomp.to_s.upcase
				if conf == 'S' or conf == 'N'
					break
				else
					puts "Digite S para sim ou N para não"
				end
			end
			if conf == 'S'
				break
			end
		end	

		while true
			puts "Vocações".center(30)
			puts "1 - Caçador
2 - Cientista
3 - Combatente
4 - Espião
5 - Exorcista
6 - Hacker
7 - Ladrão
8 - Médico
9 - Ocultista"
			print "Escolha: "
			@vocacao = gets.to_i
			case @vocacao
				when 1
					@vocacao = "Caçador"

				when 2
					@vocacao = "Cientista"

				when 3
					@vocacao = "Combatente"

				when 4 
					@vocacao = "Espião"

				when 5 
					@vocacao = "Exorcista"

				when 6 
					@vocacao = "Hacker"

				when 7
					@vocacao = "Ladrão"

				when 8 
					@vocacao = "Médico"

				when 9 
					@vocacao = "Ocultista"

				else
					"Vocação inexistente"	
			end
			if @vocacao.class == String
				break
			end
		end

		while true
			puts "Qual é o gênero do personagem [M/F]? "
			print "Escolha: "
			@genero = gets.chomp.upcase
			if @genero == 'M' or @genero == 'F'
				break
			end
		end

		while true 
			print	"Qual é a idade do personagem? "
			@idade = gets.to_i

			print "Qual é a altura do personagem? "
			@altura = gets.to_f

			print "Qual é o peso do personagem? "
			@peso = gets.to_f

			print "Tem certeza que a idade do personagem é #{@idade}, a altura é igual à #{@altura} e o peso é #{@peso} [S/N]? "
			conf = gets.chomp.to_s.upcase
			if conf == 'S' or conf == 'N'
				break
			else
				puts "Digite S para sim ou N para não"
			end
		end
	end
end

