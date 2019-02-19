class Question
  attr_reader :question, :answer
  def initialize(player)
    @current_player = player
    ask()
  end

  def new_question(current_player)
    a = rand(1...20)
    b = rand(1...20)
    puts @current_player
    @question = "#{@current_player.name} What does #{a} plus #{b} equal?"
    @answer = a + b
  end

  def ask
    new_question(@current_player)
    puts @question 
    response = gets.chomp
    if @answer == response.to_i
      puts true
    else
      puts false
    end
  end
  
end

# test = Question.new

# # puts test.new_question()

# test.ask()