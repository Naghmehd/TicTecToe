class Board
  attr_accessor :board

  def initialize
    @board = Array.new(9) { "" }
  end

  def display_board
    puts  " 0 | 1 | 2 ",
          "-----------",
          " 3 | 4 | 5  ",
          "-----------",
          " 6 | 7 | 8  "
    print "\n", "\n"
  end

  def winning_positions
    [
      [1,2,3],
      [4,5,6],
      [7,8,9],
      [1,5,9],
      [3,9,7],
      [2,5,8],
      [1,4,7],
      [3,6,9]
    ]
  end

  def current_board
    puts  " #{@board[0]} | #{@board[1]} | #{@board[2]} ",
          "---------------------------------------------",
          " #{@board[3]} | #{@board[4]} | #{@board[5]}  ",
          "---------------------------------------------",
          " #{@board[6]} | #{@board[7]} | #{@board[8]}  "
    print "\n", "\n"

  end

  def winner
    winning_positions.each do |winning_moves|
      if @board[winning_moves[0] - 1] == "X" &&
         @board[winning_moves[1] - 1] == "X" &&
         @board[winning_moves[2] - 1] == "X"
         puts "Player Winner!"
      else @board[winning_moves[0] - 1] == "O" &&
           @board[winning_moves[1] - 1] == "O" &&
           @board[winning_moves[2] - 1] == "O"
         puts "Player Winner!"
      end
    end
  end

end
