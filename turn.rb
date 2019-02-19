class Turn
  def initialize(player)
    @current_player = player
    next_turn()
  end

  def next_turn
    Question.new(@current_player)

  end
end
