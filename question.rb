class Question
  attr_reader :question, :answer
  def initialize
  end

  def new_question
    a = rand(1...20)
    b = rand(1...20)
    @question = "What does #{a} plus #{b} equal?"
    @answer = a + b
  end

  def ask
    new_question()
    puts @question 
    response = gets.chomp
    if @answer == response.to_i
      puts true
    else
      puts false
    end
  end
  
end

test = Question.new

# puts test.new_question()

test.ask()