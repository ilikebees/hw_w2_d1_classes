#Exercise B
require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestTeam < MiniTest::Test
  def setup
      @team = Team.new("B Team", ["Fred", "James","Bob"], "OldCoach")
  end

  def test_team_name
    expected = "B Team"
    actual = @team.name
    assert_equal(expected, actual)
  end

  def test_players
    expected = ["Fred", "James","Bob"]
    actual = @team.players
    assert_equal(expected, actual)
  end

  def test_coach_name
    expected = "OldCoach"
    actual = @team.coach
    assert_equal(expected, actual)
  end

  def test_change_coach_name
    @team.coach=("Harry")
    expected = "Harry"
    actual = @team.coach
    assert_equal(expected, actual)
  end

  def test_add_player
    @team.add_player ("Mike")
    expected = ["Fred", "James","Bob", "Mike"]
    actual = @team.players
    assert_equal(expected, actual)
  end

  def test_player_in_team
    expected = true
    actual = @team.check_player_in_team? ("James")
    assert_equal(expected, actual)
  end

  def test_player_not_in_team
    expected = false
    actual = @team.check_player_in_team? ("Ian")
    assert_equal(expected, actual)
  end

  def test_points_updated_win
    @team.update_points("win")
    expected = 1
    actual = @team.points
    assert_equal(expected, actual)
  end



end
