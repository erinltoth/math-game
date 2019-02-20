
class Game
  attr_reader :player1, :player2, :turn, :current_player
  def initialize 
    puts "Welcome to the Super Cool Math Game!"
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = player2
    game_playing
  end

  def game_playing
    while player1.lives > 0 && player2.lives > 0
      @current_player = @current_player == player1 ? player2 : player1  
      puts "#{@player1.name}'s score is #{@player1.lives}/3 ||#{@player2.name}'s score is #{@player2.lives}/3  "
      new_turn
    end
    puts player1.lives == 0 ? "#{@player2.name} won with #{@player2.lives}/3 points" : "#{@player1.name} won with #{@player1.lives}/3 points" 
  end

  def new_turn
    line = "*****"
    turn = Turn.new(@current_player.name)
    puts line
    puts "New Turn"
    puts "#{@current_player.name}'s turn"
    turn.ask
    puts line
    if !turn.ask
      @current_player.lives -= 1
      puts "#{@current_player.name} is wrong and loses a point"
    else
      puts line
      puts "Correct!"
    end
  end
end

