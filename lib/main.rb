class RPS

  def initialize()
    @rps_plays = { 1 => "rock", 2 => "paper", 3 => "scissors" }
    @computer = rand(1..3)
    @player_win_count = 0
  end

  def rps_plays
    @rps_plays
  end

  def wins?(user_input, computer)
    player_1 = @rps_plays.fetch(user_input)
    player_2 = @rps_plays.fetch(computer)
    if (player_1 == "rock" && player_2 == "scissors") || (player_1 == "paper" && player_2 == "rock") || (player_1 == "scissors" && player_2 == "paper")
      true
    elsif ()
    end
  end

end

# rand(1..3)

