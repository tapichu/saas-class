### Part II - rock, paper, scissors

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    # your code here
end

def rps_tournament_winner(tournament)
    # your code here
end
