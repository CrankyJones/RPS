class RPS

  def initialize()
    @rps_plays = { 1 => "rock", 2 => "paper", 3 => "scissors" }
    @player_win_count = 0
    @player_draw_count = 0
    @player_loss_count = 0
  end

  def input_check (user_input)
    if (user_input < 1 || user_input > 3)
      puts 'Please enter 1, 2, or 3'
      user_input = gets.to_i
      input_check(user_input)
    end
  end
  
  def rps_plays
    @rps_plays
  end
  
  def wins(user_input)
    computer = rand(1..3)
    player_1 = @rps_plays.fetch(user_input)
    player_2 = @rps_plays.fetch(computer)
    if (player_1 == "rock" && player_2 == "scissors") || (player_1 == "paper" && player_2 == "rock") || (player_1 == "scissors" && player_2 == "paper")
      @player_win_count += 1
      puts 'You win, but you got lucky!'
    elsif (player_1 == player_2)
      @player_draw_count += 1
      puts 'DRAW. You can\'t beat me!'
    else
      @player_loss_count += 1
      puts "You lost to #{player_2}, you loser!"
    end
    puts "Wins: #{@player_win_count} Losses: #{@player_loss_count} Draws: #{@player_draw_count}"
  end

end

# rand(1..3)

