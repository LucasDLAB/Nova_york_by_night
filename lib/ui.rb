module Ui
  class CreatePerson

    def self.show(character)
      puts "Nome do personagem e jogador: #{character.nome_personagem} / #{character.nome_jogador} #{' '*5} Vocação: #{character.vocacao}"
      puts "Idade: #{character.idade} #{' '*5} Peso: #{character.peso} kg #{' '*5} Altura: #{character.altura} cm"
      puts "Sexo: #{character.genero}"
    end
    
    def self.create(character)

      while true
        print "Digite o nome do seu personagem: "
        character.nome_personagem = gets.chomp.to_s
      
        while true
          print "Tem certeza que deseja selecionar o nome #{character.nome_personagem} [S/N]? "
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
        character.nome_jogador= gets.chomp.to_s
        while true
          print "Tem certeza que o nome do jogador é #{character.nome_jogador} [S/N]? "
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
          character.rastrear += 10
        when 2
          character.vocacao = "Cientista"
          puts "Como Cientista, você deseja bônus em robótica [R] ou em alquimia [A]?"
          while true
            print "Escolha: "
            resposta = gets.to_s.upcase[0]
            if resposta == "R"
              character.robotica += 10
              break
            elsif resposta == "A"
              character.alquimia += 10
              break
            else
              puts "Digite R para robótica ou A para alquimia"
            end
          end
        when 3
          character.vocacao = "Combatente"
          puts "Como Combatente, você deseja bônus em golpear [G] ou em atirar [A]?"
          while true
            print "Escolha: "
            resposta = gets.to_s.upcase[0]
            if resposta == "G"
              character.golpear += 10
              break
            elsif resposta == "A"
              character.atirar += 10
              break
            else
              puts "Digite G para golpear ou A para atirar"
            end
          end
        when 4 
          character.vocacao = "Espião"
          puts "Como Espião, você deseja bônus em robótica [R] ou em furtividade [F]?"
          while true
            print "Escolha: "
            resposta = gets.to_s.upcase[0]
            if resposta == "R"
              character.robotica += 10
              break
            elsif resposta == "F"
              character.furtividade += 10
              break
            else
              puts "Digite R para robótica ou F para furtividade"
            end
          end
        when 5 
          character.vocacao = "Exorcista"
          character.exorcismo += 10
        when 6 
          character.vocacao = "Hacker"
          character.computacao += 10
        when 7
          character.vocacao = "Ladrão"
          puts "Como Ladrão, você deseja bônus em interpretar [I] ou em furtar [F]?"
          while true
            print "Escolha: "
            resposta = gets.to_s.upcase[0]
            if resposta == "I"
              character.interpetrar += 10
              break
            elsif resposta == "F"
              character.furtar += 10
              break
            else
              puts "Digite I para interpetrar ou F para furtar"
            end
          end
        when 8 
          character.vocacao = "Médico"
          character.medicina += 10
        when 9 
          character.vocacao = "Ocultista"
          character.ocultismo += 10
        else
          puts"Vocação inexistente"   
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
        while true
          print "Tem certeza que a idade do personagem é #{character.idade}, a altura é igual à #{character.altura} e o peso é #{character.peso} [S/N]? "
          confirmation = gets.chomp.to_s.upcase
          if confirmation == 'S' or confirmation == 'N'
            break
          else
            puts "\e[H\e[2J"
            puts "Digite S para sim ou N para não"
          end
        end
        if confirmation == 'S'
          break
        end
      end
    end
  end
end