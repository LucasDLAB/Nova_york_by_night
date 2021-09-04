module Ui
  class CreatePerson

    def self.show(character)
      puts "Nome do personagem e jogador: #{character.nome_personagem} / #{character.nome_jogador} #{' '*5} Vocação: #{character.vocacao}"
      puts "Idade: #{character.idade} #{' '*5} Peso: #{character.peso} kg #{' '*5} Altura: #{character.altura} cm"
      puts "Sexo: #{character.genero}    Temperamento: #{character.temperamento}    Destino: #{character.destino}" 
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
        puts "Temperamento".center(30)
        puts "
1 - Fleumático
2 - Sanguíneo
3 - Colérico
4 - Melancólico"
        print "Escolha: "
        character.temperamento = gets.to_i
        case character.temperamento
        when 1
          character.temperamento = "Fleumático"
          character.vigor += 2
          character.conhecimento += 2
        when 2
          character.temperamento = "Sanguíneo"
          character.agilidade += 2
          character.conhecimento += 2

        when 3
          character.temperamento = "Colérico"
          character.forca += 2
          character.inteligencia += 2
        when 4
          character.temperamento = "Melancólico"
          character.expressao += 2
          character.conhecimento += 2
        else
          puts"Temperamento inexistente"   
        end
        
        if character.vocacao.class == String
          break
        end
      end

      while true
        puts "Destino".center(30)
        puts "
1 - Anarquista          16 - Naturalista
2 - Aventureiro         17 - Explorador
3 - Brincalhão          18 - Pacifista
4 - Enigmático          19 - Político
5 - Encrenqueiro        20 - Projetista
6 - Galanteador         21 - Rebelde
7 - Herói               22 - Religioso
8 - Homicida            23 - Revolucionário
9 - Indulgente          24 - Sobrevivente
10 - Justiceiro         25 - Vilão
11 - Louco              26 - Vítima
12 - Lutador
13 - Mártir
14 - Mercador
15 - Mágico"
        print "Escolha: "
        character.destino = gets.to_i
        case character.destino
        when 1
          charadestino = "Anarquista"
          character.discursar += 2
          character.intimidar += 2
        when 2
          character.destino = "Aventureiro"
          character.sobrevivencia += 2
          character.escalar += 2

        when 3
          character.destino = "Brincalhão"
          character.interpretar += 2
          character.diplomacia += 2
        when 4
          character.destino = "Enigmático"
          character.interpretar += 2
          character.intuicao += 2
        when 5
          character.destino = "Encrenqueiro"
          character.provocar += 2
          character.esquivar += 2
        when 6
          character.destino = "Galanteador"
          character.seduzir += 2
          character.diplomacia += 2
        when 7
          character.destino = "Herói"
          character.proteger += 2
          puts "Como #{character.destino}, você deseja bônus em golpear [G] ou em atirar [A]?"
          while true
            print "Escolha: "
            resposta = gets.to_s.upcase[0]
            if resposta == "G"
              character.golpear += 2
              break
            elsif resposta == "A"
              character.atirar += 2
              break
            else
              puts "Digite G para golpear ou A para atirar"
            end
          end
        when 8
          character.destino = "Homicida"
          character.furtividade += 2
          puts "Como #{character.destino}, você deseja bônus em golpear [G] ou em atirar [A]?"
          while true
            print "Escolha: "
            resposta = gets.to_s.upcase[0]
            if resposta == "G"
              character.golpear += 2
              break
            elsif resposta == "A"
              character.atirar += 2
              break
            else
              puts "Digite G para golpear ou A para atirar"
            end
          end
        when 9
          character.destino = "Indulgente"
          character.diplomacia += 2
          character.discursar += 2
        when 10
          character.destino = "Justiceiro"
          character.rastrear += 2
          puts "Como #{character.destino}, você deseja bônus em golpear [G] ou em atirar [A]?"
          while true
            print "Escolha: "
            resposta = gets.to_s.upcase[0]
            if resposta == "G"
              character.golpear += 2
              break
            elsif resposta == "A"
              character.atirar += 2
              break
            else
              puts "Digite G para golpear ou A para atirar"
            end
          end

        when 11
          character.destino = "Louco"
          character.banimento += 2
          #character.percepcao += 2
        when 12
          character.destino = "Lutador"
          character.golpear += 2
          character.esquivar += 2
        when 13
          character.destino = "Mártir"
          character.proteger += 2
          character.provocar += 2
        when 14
          character.destino = "Mercador"
          character.diplomacia += 2
          character.interpretar += 2

        when 15
          character.destino = "Mágico"
          character.conjurar += 2
          character.alquimia += 2
        when 16
          character.destino = "Naturalista"
          character.natureza += 2
          character.sobrevivencia += 2
        when 17
          character.destino = "Explorador"
          character.investigar += 2
          character.sobrevivencia += 2
        when 18
          character.destino = "Pacifista"
          character.mantra += 2
          character.diplomacia += 2

        when 19
          character.destino = "Político"
          character.interpretar += 2
          character.discursar += 2
        when 20
          character.destino = "Projetista"
          character.robotica += 2
          character.engenharia += 2
        when 21
          character.destino = "Rebelde"
          character.intimidar += 2
          character.sobrevivencia += 2
        when 22
          character.destino = "Religioso"
          character.panteologia += 2
          character.banimento += 2

        when 23
          character.destino = "Revolucionário"
          character.diplomacia += 2
          character.provocar += 2
        when 24
          character.destino = "Sobrevivente"
          character.sobrevivencia += 2
          character.furtividade += 2
        when 25
          character.destino = "Vilão"
          character.furtividade += 2
          character.interpretar += 2
        when 26
          character.destino = "Vítima"
          character.interpretar += 2
          character.sobrevivencia += 2
        else
          puts"Destino inexistente"   
        end
        
        if character.vocacao.class == String
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