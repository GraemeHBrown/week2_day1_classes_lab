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

#Create a setter method to allow the coach's name to be updated.

def test_set_coach()
  new_coach_name = 'Yatesy'
  @team.coach=(new_coach_name)
  assert_equal(new_coach_name, @team.coach())
end

# Refactor the class to use attr_reader or attr_accessor
# instead of your own getter and setter methods.

end
