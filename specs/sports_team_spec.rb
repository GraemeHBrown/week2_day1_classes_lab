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
  assert_equal('Sky', @team.get_name())
end

def test_get_players()
  assert_equal(['Froomey','G','Stannard'], @team.get_players())
end

def test_get_coach()
  assert_equal('Sir Dave B', @team.get_coach())
end

#Create a setter method to allow the coach's name to be updated.

def test_set_coach()
  new_coach_name = 'Yatesy'
  @team.set_coach(new_coach_name)
  assert_equal(new_coach_name, @team.get_coach())
end

end
