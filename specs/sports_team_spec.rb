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


end
