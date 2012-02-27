require 'hw1_part2'
require 'test/unit'

class TestRockPaperScissors < Test::Unit::TestCase

    def test_rps_game_winner_wrong_number_of_players
        assert_raises WrongNumberOfPlayersError do
            rps_game_winner []
        end
        assert_raises WrongNumberOfPlayersError do
            rps_game_winner [ ['Armando', 'P'] ]
        end
        assert_raises WrongNumberOfPlayersError do
            rps_game_winner [ ['Armando', 'P'], ['Dave', 'S'], ['Paul', 'R'] ]
        end
    end

    def test_rps_game_winner_no_such_strategy
        assert_raises NoSuchStrategyError do
            rps_game_winner [ ['Armando', 'P'], ['Dave', 'Q'] ]
        end
        assert_nothing_raised NoSuchStrategyError do
            rps_game_winner [ ['Armando', 'P'], ['Dave', 's'] ]
        end
    end

    def test_rps_game_winner
        assert_equal ['Armando', 'R'], rps_game_winner([ ['Armando', 'R'], ['Dave', 'S'] ])
        assert_equal ['Armando', 'S'], rps_game_winner([ ['Armando', 'S'], ['Dave', 'P'] ])
        assert_equal ['Dave', 'P'],    rps_game_winner([ ['Armando', 'R'], ['Dave', 'P'] ])
        assert_equal ['Armando', 'P'], rps_game_winner([ ['Armando', 'P'], ['Dave', 'P'] ])
    end

    def test_rps_tournament_winner
        tournament = [
            [ [['Armando', 'P'], ['Dave', 'S']], [['Richard', 'R'], ['Michael', 'S']] ],
            [ [['Allen', 'S'], ['Omer', 'P']], [['David E.', 'R'], ['Richard X.', 'P']] ]
        ]

        assert_equal ['Richard', 'R'], rps_tournament_winner(tournament)
    end

end
