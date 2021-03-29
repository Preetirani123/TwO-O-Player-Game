class Play
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def score_board
    puts "P1: #{@player_1.lives}/3 VS P2: #{@player_2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins the game and score is #{player.lives}"
    puts "--------------Game Over----------------------------"
    puts "Good Bye!"
    exit(0)
  end


  def player_score
    if @player_1.dead
      winner(@player_2)
    elseif @player_2.dead
      winner(@player_1)
    end
  end
  

  def start
    @player_1.new_question
    player_score
    @player_2.new_question
    player_score
    score_board
    puts '---------NEW-TURN---------'
    start
  end

end
