module Atributos
	def captura
		puts "Atributos".center(30)
		self.personagem_atributos
		@atributos = personagem_atributos
		@personagem_atributos = @personagem_atributos.map do |attr|
    	@novo = attr.to_s
    	@novo.match(/\w+./).to_s
    end
	end

	def pontos
		captura
		n = 0
			for c in 0..5 do
				print "#{n+1} - "
				puts "#{@personagem_atributos[n].capitalize} => #{self.instance_variable_get(@atributos[n])}"
				n += 1 
			end
			if @pontos_para_distribuir != 0
				puts "#{@personagem_atributos[6].capitalize} => #{self.instance_variable_get(@atributos[6])}"
			end
	end

	def total (chv,val)
		puts " "
		puts "Você possui #{val} pontos em #{chv} "
		while true
			print "Quantos pontos você deseja atribuir em #{chv}: "
			@point = gets.to_i
			puts " "
			if @point <= @pontos_para_distribuir
				@pontos_para_distribuir -= @point 
				break
			else
				puts "Digite um número até #{@pontos_para_distribuir}"
			end
		end
	end

	def distribuicao
		while true
			pontos
			@v = gets.to_i - 1
			case @v
				when 0
					total('força',@forca)
					@forca += @point
				when 1
					total('vigor',@vigor)
					@vigor += @point

				when 2
					total('agilidade',@agilidade)
					@agilidade += @point

				when 3
					total('expressão',@expressao)
					@expressao += @point

				when 4 
					total('inteligência',@inteligencia)
					@inteligencia += @point

				when 5 
					total('conhecimento',@conhecimento)
					@conhecimento += @point

				else
					puts "Digite um número entre 1 e 6"		
			end

			if @pontos_para_distribuir == 0
				while true
					pontos
					print "Tem certeza que deseja os pontos distribuídos dessa forma [S/N]? "
					resp =  gets.chomp.to_s.upcase
					if resp == 'S' or resp == 'N'
						break
					else
						puts "Digite S para sim ou N para não"
					end
				end
				if resp == 'S'
					break
				elsif resp == 'N'
					@pontos_para_distribuir = 50
					puts "Por favor, redistribua os pontos novamente"
				end
			end	
		end
	end
end

