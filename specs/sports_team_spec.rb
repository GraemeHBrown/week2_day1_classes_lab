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

def test_get_name()
  assert_equal('Sky', @team.name())
end

def test_get_players()
  assert_equal(['Froomey','G','Stannard'], @team.players())
end

def test_get_coach()
  assert_equal('Sir Dave B', @team.coach())
end

def test_set_coach()
  new_coach_name = 'Yatesy'
  @team.coach=(new_coach_name)
  assert_equal(new_coach_name, @team.coach())
end

# Create a method that adds a new player to the player's array.

def test_add_new_player()
  new_player = 'Sergio Henao'
  @team.add_new_player(new_player)
  assert_equal(true, @team.players().include?(new_player))
end



end
