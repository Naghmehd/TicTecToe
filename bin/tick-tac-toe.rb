require_relative '../lib/board'
require_relative '../lib/player'


class Game

  def start
    puts
    puts "-----WELCOME TO THE TIC TAC TOE GAME------"
    puts "\n >> PLEASE SEE THE POSTIONS OF THE BOARD << \n\n"

    @board = Board.new

    loop do
      puts @board.display_board
      puts @board.current_board
      puts "Pick a number for your move"
      @board.board[player_move] = "X" #store player to move
      @board.board[computer_move] = "O" #computer makes the random move
      @board.winner
    end
  end

  def player_move
    choice = gets.chomp.to_i
    if @board.board[choice] == ""
      return choice
    else
      puts "Pick a open space"
      return player_move
    end
  end

  def computer_move
    choice = rand(0..8)
    if @board.board[choice] == ""
      return choice
    else
      computer_move
    end
  end

end
Game.new.start
