module Skills
	def captura_habilidades
		puts "Habilidades".center(30)
		self.personagem_habilidades
		@habilidades = []
		for c in 7..55 do
			@habilidades.push(personagem_habilidades[c])
		end
		puts @habilidades[0]
		

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
				if @distribuir_skills != 0 
					print "#{n+1} / #{n+2}- "
				end
				s = 40
				s -= @personagem_habilidades[c-1].size
				puts "#{@personagem_habilidades[c-1].capitalize} => #{self.instance_variable_get(@habilidades[c-1])}  #{@personagem_habilidades[c].capitalize.rjust(s)} => #{self.instance_variable_get(@habilidades[c])}" 
				n += 2
			end
			if @distribuir_habilidades != 0
				puts "#{@personagem_habilidades[48].capitalize} => #{self.instance_variable_get(@habilidades[48])}"
			end
	end

	def total_skills(chv,valor)

	end

end
	