require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

# Team that has the properties
# Team name (String),
# Players (Array of strings)
# and a Coach (String).

class TestSportsTeam < MiniTest::Test

  def setup
    @team = SportsTeam.new('Sky',['Froomey','G','Stannard'], 'Sir Dave B')
  end

  def test_name()
    assert_equal('Sky', @team.name())
  end

  def test_players()
    assert_equal(['Froomey','G','Stannard'], @team.players())
  end

  def test_coach()
    assert_equal('Sir Dave B', @team.coach())
  end

  def test_set_coach()
    new_coach_name = 'Yatesy'
    @team.coach=(new_coach_name)
    assert_equal(new_coach_name, @team.coach())
  end

  def test_add_new_player()
    new_player = 'Sergio Henao'
    existing_array_size = @team.players().size()
    @team.add_new_player(new_player)
    assert_equal(existing_array_size+1, @team.players().size())
    assert_equal(true, @team.players().include?(new_player))
  end

  def test_is_player_in_team()
    player_to_find1 = 'G'
    player_to_find2 = 'GVA'
    assert_equal(true, @team.is_player_in_team(player_to_find1))
    assert_equal(false, @team.is_player_in_team(player_to_find2))
  end

  # Add a points property into your class that starts at 0.
  #Note:  its initialised to 0 in constructor.  Not sure if this is
  #best/only way of achieveing this?
  def test_points()
    assert_equal(0, @team.points())
  end

  def test_update_points__after_win()
    has_won = true
    existing_points = @team.points()
    @team.update_points(has_won)
    assert_equal(existing_points+5, @team.points())
  end

  def test_update_points__points_not_increased()
    has_won = false
    existing_points = @team.points()
    @team.update_points(has_won)
    assert_equal(existing_points, @team.points())
  end


end
