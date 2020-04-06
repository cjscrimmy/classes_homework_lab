class Team
  attr_reader :team_name, :players, :coach, :points
  attr_writer :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def check_for_player(player)
    for play in @players
      if (play == player)
        return true
      else
        return false
      end
    end
  end

  def points_won_or_lost(outcome)
    if (outcome == "win")
      @points += 5
    else
      @points += 0
    end
  end
end
