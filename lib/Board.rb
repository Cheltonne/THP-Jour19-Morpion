require_relative 'BoardCase.rb'
class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :row1, :row2, :row3

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @row1 = []
    @row2 = []
    @row3 = []
    i = 1 
    3.times do
      @row1 << BoardCase.new("a#{i}")
      i += 1
    end
    i = 1
    3.times do
      @row2 << BoardCase.new("b#{i}")
      i += 1
    end
    i = 1
    3.times do
      @row3 << BoardCase.new("c#{i}")
      i += 1
    end
  end

  def play_turn
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end
end #Fin de la classe Board