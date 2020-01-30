require_relative 'Game.rb'
class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    system "clear"
    puts "Bienvenue dans mon jeu de morpion. Le plateau de jeu est composé de 9 cases, chacune désignée par sa position verticale (a, b ou c) suivie de sa position horizontale (1, 2 ou 3). Exemples : la case en haut à droite s'appelle \"a3\" et celle en bas à droite \"c3\". Vous allez devoir a tour de role rentrer dans le terminal le nom de la case que vous souhaitez remplir, puis appuyer sur la touche entree pour valider.\n\n"
     print "Appuyez sur entree pour continuer..."
     gets.chomp
     puts "" 
    g = Game.new
     turn_count = 0
     while turn_count < 9
      g.turn
      if g.game_end == true
        puts "Felicitations, #{g.current_player.name} a gagne !"
        puts "Souhaitez-vous recommencer ?"
        print "> "
        choice = gets.chomp
        if choice == "Oui"
          turn_count = 0
          redo
          g = Game.new
        elsif choice == "Non"
          abort("Merci d\'avoir joue !".green) 
        end
      end
      g.switch_player
      turn_count += 1
    end
    if turn_count == 9
      puts "Match nul...souhaitez-vous recommencer ?"
    end
  end
end

Application.new.perform