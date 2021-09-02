module Skills
	def captura_habilidades
		puts "Habilidades".center(60)
		@habilidades = []
		for c in 7..54 do
			@habilidades.push(personagem_habilidades[c])
		end

		@personagem_habilidades = @habilidades.map do |attr|
    	@novo_skills = attr.to_s
    	@novo_skills.match(/\w+./).to_s
    end
	end

	def pontos_habilidades
		captura_habilidades
		n = 0
			for c in 0..47 do
				next if c %2==0 
				s = 40
				if n >= 9
					s -= @personagem_habilidades[c-1].size + 1
				else
					s -= @personagem_habilidades[c-1].size
				end

				if @distribuir_habilidades != 0 
					puts "#{n+1} - #{@personagem_habilidades[c-1].capitalize} => #{self.instance_variable_get(@habilidades[c-1])}  #{''.rjust(s)} #{n+2} - #{@personagem_habilidades[c].capitalize} => #{self.instance_variable_get(@habilidades[c])}" 
				else
					puts "#{@personagem_habilidades[c-1].capitalize} => #{self.instance_variable_get(@habilidades[c-1])} #{@personagem_habilidades[c].capitalize.rjust(s)} => #{self.instance_variable_get(@habilidades[c])}"
				end
				n += 2

			end
			if @distribuir_habilidades != 0
				puts "Pontos para distribuir => #{@distribuir_habilidades}"
			end
	end

	def total_skills(chave,valor)
		puts " "
		puts "Você possui #{valor} pontos em #{chave} "
		while true
			print "Quantos pontos você deseja atribuir em #{chave}: "
			@point = gets.to_i
			puts " "
			if @point <= @distribuir_habilidades and @point >= 0
				@distribuir_habilidades -= @point 
				break
			else
				puts "Digite um número até #{@distribuir_habilidades}"
			end
		end
	end

	def distribuicao_de_habilidades
		while true
			pontos_habilidades
			print "Escolha: "
			@v = gets.to_i - 1
				if @v >= 0 and @v <= 47
					total_skills(@personagem_habilidades[@v],self.instance_variable_get(@habilidades[@v]))
					self.instance_variable_set(@habilidades[@v], self.instance_variable_get(@habilidades[@v]) + @point) 
				else
					puts "\e[H\e[2J"
					puts "Digite um número entre 1 e 48"
				end	

			if @distribuir_habilidades == 0
				while true
					pontos_habilidades
					print "Tem certeza que deseja os pontos distribuídos dessa forma [S/N]? "
					resp =  gets.chomp.to_s.upcase
					if resp == 'S' or resp == 'N'
						break
					else
						puts "\e[H\e[2J"
						puts "Digite S para sim ou N para não"
					end
				end
				if resp == 'S'
					break
				elsif resp == 'N'
					@distribuir_habilidades = 50
					puts "\e[H\e[2J"
					puts "Por favor, redistribua os pontos novamente"
				end
			end	
		end
	end
end
	