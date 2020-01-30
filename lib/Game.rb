require_relative 'Player.rb'
require_relative 'Board.rb'
require_relative 'BoardCase.rb'
require_relative '../view/Show.rb'
require 'colorize'

class Game
attr_accessor :current_player, :status, :Board, :player_list, :current_game, :player1, :player2
  
  def initialize
    puts "Veuillez rentrer le nom du joueur 1"
    print "> "
    @player1 = Player.new(gets.chomp, 'X'.red)
    puts "Veuillez rentrer le nom du joueur 2"
    print "> "
    @player2 = Player.new(gets.chomp, 'O'.blue)
    @current_game = Board.new
    @status = "on going"
    coin_flip = rand(1..2)
    case coin_flip
    when 1
      @current_player = @player1
    else
      @current_player = @player2
    end
  end

  def turn
    puts "Voici l'etat du plateau de jeu :\n\n"
    Show.new.show_board(@current_game)
    puts ""
    puts "Veuillez rentrer les coordonnees de la case que vous souhaitez remplir"
    choice = gets.chomp
    case choice
    when 'a1'
      @current_game.row1[0].sign = @current_player.sign
    when 'a2'
      @current_game.row1[1].sign = @current_player.sign
    when 'a3'
      @current_game.row1[2].sign = @current_player.sign
    when 'b1'
      @current_game.row2[0].sign = @current_player.sign
    when 'b2'
      @current_game.row2[1].sign = @current_player.sign
    when 'b3'
      @current_game.row2[2].sign = @current_player.sign
    when 'c1'
      @current_game.row3[0].sign = @current_player.sign
    when 'c2'
      @current_game.row3[1].sign = @current_player.sign
    when 'c3'
      @current_game.row3[2].sign = @current_player.sign
    end
    Show.new.show_board(@current_game)
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    new_game = Board.new
    @status = "on going"
    coin_flip = rand(1..2)
    case coin_flip
    when 1
      @current_player = @player1
    else
      @current_player = @player2
    end
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    if (@current_game.row1[0].sign == "#{@current_player.sign}" && @current_game.row1[1].sign == "#{@current_player.sign}" && @current_game.row1[2].sign == "#{@current_player.sign}") || (@current_game.row2[0].sign == "#{@current_player.sign}" && @current_game.row2[1].sign == "#{@current_player.sign}" && @current_game.row2[2].sign == "#{@current_player.sign}") || (@current_game.row3[0].sign == "#{@current_player.sign}" && @current_game.row3[1].sign == "#{@current_player.sign}" && @current_game.row3[2].sign == "#{@current_player.sign}") || (@current_game.row1[0].sign == "#{@current_player.sign}" && @current_game.row2[0].sign == "#{@current_player.sign}" && @current_game.row3[0].sign == "#{@current_player.sign}") || (@current_game.row1[1].sign == "#{@current_player.sign}" && @current_game.row2[1].sign == "#{@current_player.sign}" && @current_game.row3[1].sign == "#{@current_player.sign}") || (@current_game.row1[2].sign == "#{@current_player.sign}" && @current_game.row2[2].sign == "#{@current_player.sign}" && @current_game.row3[2].sign == "#{@current_player.sign}") || (@current_game.row1[0].sign == "#{@current_player.sign}" && @current_game.row2[1].sign == "#{@current_player.sign}" && @current_game.row3[2].sign == "#{@current_player.sign}") || (@current_game.row1[2].sign == "#{@current_player.sign}" && @current_game.row2[1].sign == "#{@current_player.sign}" && @current_game.row3[0].sign == "#{@current_player.sign}")
      return true
    end
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

end
require 'pry'
# binding.pry