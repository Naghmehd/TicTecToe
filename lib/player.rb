require_relative '../lib/board'

class Player
  attr_accessor :name, :score

  # def initialize
  #   @name = gets.chomp
  # end

  def player
    player_choice == X
  end

  def computer
    computer_choice == O
  end
  
end
