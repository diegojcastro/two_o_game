class Question
  attr_reader :prompt, :answer

  def initialize(val1, val2)
    @prompt = "What is #{val1} plus #{val2}? "
    @answer = val1 + val2
  end

end