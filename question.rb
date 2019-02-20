class Question
  attr_accessor :question, :answer

  def initialize
    new_question
  end

  def new_question
    a = rand(1...20)
    b = rand(1...20)
    @question = " What does #{a} plus #{b} equal?"
    @answer = a + b
  end

  
  
end
