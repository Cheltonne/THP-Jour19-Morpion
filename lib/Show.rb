require_relative 'Board.rb'
require_relative 'BoardCase.rb'
class Show
  def show_board(board)
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    board.row1.each do |i|
      print "|#{i.sign}|"
    end
    puts ""
    board.row2.each do |i|
      print "|#{i.sign}|"
    end
    puts ""
    board.row3.each do |i|
      print "|#{i.sign}|"
    end
    puts ""
  end
end