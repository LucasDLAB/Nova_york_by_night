module Ui
  class CreatePerson
    
    def self.create(character)

      while true
        print "Digite o nome do seu personagem: "
        character.character_name = gets.chomp.to_s
      
        while true
          print "Tem certeza que deseja selecionar o nome #{character.character_name} [S/N]? "
          confirmation = gets.chomp.to_s.upcase
          if confirmation == 'S' or confirmation == 'N'
              break
          else
              puts "Digite S para sim ou N para não"
          end
        end
        
        if confirmation == 'S'
          break
        end
      end

      while true
        print "Digite o nome do jogador: "
        @nome_jogador= gets.chomp.to_s
        while true
          print "Tem certeza que o nome do jogador é #{character.character_name} [S/N]? "
          confirmation = gets.chomp.to_s.upcase
          if confirmation == 'S' or confirmation == 'N'
            break
          else
            puts "Digite S para sim ou N para não"
          end
        end
        
        if confirmation == 'S'
            break
        end
      end 

      while true
        puts "Vocações".center(30)
        puts "
        1 - Caçador
        2 - Cientista
        3 - Combatente
        4 - Espião
        5 - Exorcista
        6 - Hacker
        7 - Ladrão
        8 - Médico
        9 - Ocultista"
        print "Escolha: "
        character.vocacao = gets.to_i
        case character.vocacao
        when 1
          character.vocacao = "Caçador"
        when 2
          character.vocacao = "Cientista"
        when 3
          character.vocacao = "Combatente"
        when 4 
          character.vocacao = "Espião"
        when 5 
          character.vocacao = "Exorcista"
        when 6 
          character.vocacao = "Hacker"
        when 7
          character.vocacao = "Ladrão"
        when 8 
          character.vocacao = "Médico"
        when 9 
          character.vocacao = "Ocultista"
        else
          "Vocação inexistente"   
        end
        
        if character.vocacao.class == String
          break
        end
      end
    
      while true
        puts "Qual é o gênero do personagem [M/F]? "
        print "Escolha: "
        character.genero = gets.chomp.upcase
        if character.genero == 'M' or character.genero == 'F'
            break
        end
      end
            
      while true 
        print   "Qual é a idade do personagem? "
        character.idade = gets.to_i
        print "Qual é a altura do personagem? "
        character.altura = gets.to_f
        print "Qual é o peso do personagem? "
        character.peso = gets.to_f
        print "Tem certeza que a idade do personagem é #{character.idade}, a altura é igual à #{character.altura} e o peso é #{character.peso} [S/N]? "
        confirmation = gets.chomp.to_s.upcase
        if confirmation == 'S' or confirmation == 'N'
          break
        else
          puts "Digite S para sim ou N para não"
        end
      end
    end
  end
end