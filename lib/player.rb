require_relative '../lib/board'


class Player
  attr_accessor :name

  def initlalize(name)
    @name = name
  end

  def name
    @name
  end

  def player
    @name = gets.chomp.to_s
  end

end
