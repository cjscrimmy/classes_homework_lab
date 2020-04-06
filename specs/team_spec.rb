require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../team")

class TestTeam < MiniTest::Test
    def setup()
        @team = Team.new("Newts",['bob','gary'],'steve', 0)
    end


    def test_get_team_name
      assert_equal("Newts", @team.team_name)
    end
  
    def test_get_players
      assert_equal(['bob','gary'], @team.players)
    end

    def test_get_coach
      assert_equal('steve', @team.coach)
    end

    def test_points
      assert_equal(0, @team.points)
    end
    
    def test_set_coach
      @team.coach = 'brian'
      assert_equal('brian', @team.coach)
    end

    def test_add_player
      @team.add_player('mick')
      assert_equal(['bob','gary','mick'], @team.players)
    end

    def test_check_for_player__not_in_array
      assert_equal(false, @team.check_for_player('bruce'))
    end

    def test_check_for_player__in_array
      assert_equal(true, @team.check_for_player('bob'))
    end

    def test_points_won
      
      assert_equal(5, @team.points_won_or_lost('win'))
    end

    def test_points_lost
      
      assert_equal(0, @team.points_won_or_lost('lost'))
    end
end