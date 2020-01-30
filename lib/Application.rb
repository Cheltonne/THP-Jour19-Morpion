require_relative 'Game.rb'
class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
     g = Game.new
     turn_count = 0
     while turn_count < 9
      g.turn
      if g.game_end == true
        puts "Felicitations, #{g.current_player.name} a gagne !"
        puts "Souhaitez-vous recommencer ?"
        print "> "
        if gets.chomp == "Oui"
          g.new_round
        elsif gets.chomp == "Non"
          return true
        end
      end
      g.switch_player
      turn_count += 1
    end
  end
end

Application.new.perform