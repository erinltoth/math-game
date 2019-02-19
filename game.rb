require './player'

class Game
  attr_reader :player1, :player2
  def initialize 
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end
end

new = Game.new

puts new.player1
puts new.player2

