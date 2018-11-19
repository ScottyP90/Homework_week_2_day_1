require('minitest/autorun')
require('minitest/rg')
require_relative('../homework_day_1_sports.rb')

class TeamTest < Minitest::Test

  def setup
    @team1 = Team.new("G10", ["Scott","Alan","Andrew"], "Ally", 0)
  end

  def test_team_name_get
    team_name = @team1.team_name_get
    assert_equal("G10", team_name)
  end

  def test_players_get
    player = @team1.players_get
    assert_equal(["Scott", "Alan", "Andrew"], player)
  end

  def test_coach_get
    coach = @team1.coach_get
    assert_equal("Ally", coach)
  end

  def test_change_coach_name
    @team1.coach = "Mark"
    coach = @team1.coach()
    assert_equal("Mark", coach)
  end

  def test_add_player
    @team1.add_player("Grant")
    players = @team1.players.count()
    assert_equal(4, players)
  end

  def test_find_a_player
    @team1.find_a_player("Scott")
    player_found = @team1.find_a_player("Scott")
    assert_equal(true, player_found)
  end

  #def test_point_score
  #  @team1.points("Win")
  #  points_scored = @team1.points
  #  assert_equal(1, points_scored)
  #end
end
