require './question'
require './player'
require './game'

p1 = Player.new("Mario")
p2 = Player.new("Luigi")

game = Game.new([p1, p2])

puts "Welcome to TwO-O, #{p1.name} and #{p2.name}. Let's play a game!"

while !game.game_end do
  nums = game.next_question
  q1 = Question.new(nums)

  game.handle_question(q1)
end

puts "#{game.victor.name} wins with a score of #{game.victor.lives}/3"
puts "----- GAME OVER -----"