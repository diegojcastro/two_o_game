=begin
Holds the main game loop.
IV: turn, current_player
=end

class Game
  attr_reader :current_player, :game_end, :victor
  def initialize(players)
    @turn = 0
    @players = players
    @current_player = @players[0]
    @game_end = false
    @victor = nil
  end

  def next_player
    @current_player == @players[0] ? @current_player = @players[1] : @current_player = @players[0]
  end
  
  def next_question
    @turn += 1
    n1 = rand(1..20)
    n2 = rand(1..20)

    [n1, n2]
  end

  def handle_question(question)
    puts "----- TURN #{@turn} ------"
    puts "#{@current_player.name}: #{question.prompt}"
    answer = gets.chomp
    answer == question.answer.to_s ? handle_correct : handle_wrong(question.answer)
  end

  def handle_correct
    puts "YES! #{@current_player.name}, you are correct!"
    puts "#{@players[0].name}: #{@players[0].lives}/3 vs #{@players[1].name}: #{@players[1].lives}/3"
    next_player
  end

  def handle_wrong(answer)
    puts "NO! #{@current_player.name}, you are WRONG! The answer was #{answer}."
    current_lives = @current_player.remove_life
    if current_lives < 1
      next_player
      @victor = @current_player
      @game_end = true
    else 
      puts "#{@players[0].name}: #{@players[0].lives}/3 vs #{@players[1].name}: #{@players[1].lives}/3"
      next_player
    end
  end

end
