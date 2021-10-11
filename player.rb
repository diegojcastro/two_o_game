=begin
Player class
IV: name, lives
Takes a turn to answer questions, either doing nothing on a
correct answer or losing a life on an incorrect one.
=end

class Player

  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def remove_life
    @lives -= 1
    @lives
  end

end