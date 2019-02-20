require './game'


class Turn
  attr_accessor :question
  def initialize(current_player)
    @question = Question.new
    @current_player = current_player
  end

  def ask
    puts "#{@current_player}: #{question.question}"
    response = gets.chomp
    if question.answer == response.to_i
      true
    else
      false
    end
  end

end
