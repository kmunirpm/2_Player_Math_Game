class Question
  def initialize
    @num1 = rand(1..15)
    @num2 = rand(1..15)
    @answer = @num1 + @num2
  end

  def question
    "What does #{@num1} plus #{@num2} equal?"
  end 

  def validate_answer(answer)
    return answer == @answer
  end
end 