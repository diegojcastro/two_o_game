class Question
  attr_reader :prompt, :answer

  def initialize(nums)
    @prompt = "What is #{nums[0]} plus #{nums[1]}? "
    @answer = nums[0] + nums[1]
  end

end