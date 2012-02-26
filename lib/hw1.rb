### Part I - fun with strings

def palindrome?(string)
    # your code here
end

def count_words(string)
    # your code here
end

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

### Part III - anagrams

def combine_anagrams(words)
    # your code here
end

### Part IV - basic OOP

class Dessert
    def initialize(name, calories)
        # your code here
    end

    def healthy?
        # your code here
    end

    def delicious?
        # your code here
    end
end

class JellyBean < Dessert
    def initialize(name, calories, flavor)
        # your code here
    end

    def delicious?
        # your code here
    end
end

### Part V - advanced OOP

class Class
    def attr_accessor_with_history(attr_name)
        attr_name = attr_name.to_s
        attr_reader attr_name
        attr_reader attr_name + '_history'
        class_eval '' # your code here, use %Q for multiline strings
    end
end
