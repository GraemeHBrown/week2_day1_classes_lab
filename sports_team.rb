class SportsTeam

attr_reader(:name, :players, :points)
attr_accessor(:coach)
POINTS_FOR_WIN = 5

  def initialize(name, players, coach, points=0)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def is_player_in_team(player_to_find)
    return @players.include?(player_to_find)
  end

  def update_points(has_won)
    @points += POINTS_FOR_WIN if has_won
  end

end
