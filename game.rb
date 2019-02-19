require './player'

class Game
  attr_reader :player1, :player2
  def initialize 
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    # Turn.new(player1)
    @turns = 0
    switch()
  end

  def switch
    @turns += 1 # do a while loop?
    if @turns / 2 == 0
      Turn.new(@player1)
    else
      Turn.new(@player2)
    end
  end

end

