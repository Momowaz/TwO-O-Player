class Question
    attr_reader :question, :answer
  
    def initialize
      num1 = rand(1..20)
      num2 = rand(1..20)
  
      @question = "What is #{num1} + #{num2}?"
      @answer = num1 + num2
    end
  
    def check_answer(user_answer)
      user_answer.to_i == @answer
    end
  end
  