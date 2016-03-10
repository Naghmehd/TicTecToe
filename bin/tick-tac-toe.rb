require_relative '../lib/board'
require_relative '../lib/player'


class Game

  def greeting
    puts "-----Welcome to the Tick Tack Toe Game------"
    print
  end

  ticktactoe.Board.new.display_positions

  puts "\n >> PLEASE SEE THE POSTIONS OF THE BOARD << \n\n"

  player_choice   = TicTacToe.Player.new(X)
  computer_choice = TicTacToe.Player.new(O)

end
