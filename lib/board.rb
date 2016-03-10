class Board
  attr_accessor :board

  def initialize
    @board = Array.new(9) { "" }
  end

  def display_board
    puts  " 1 | 2 | 3 ",
          "-----------",
          " 4 | 5 | 6  ",
          "-----------",
          " 7 | 8 | 9  "
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

  board.winning_positins.each do |winning_moves|
    if board.board[winning_moves[0] - 1] == "X" &&
       board.board(winning_moves[1] - 1) == "X" &&
       board.board[winning_moves[2] - 1] == "X"
       puts "Winner!"



end
