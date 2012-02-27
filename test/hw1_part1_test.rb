require 'hw1'
require 'test/unit'

class TestFunWithStrings < Test::Unit::TestCase

    def test_palindrome
        palindromes = ["Satan Oscillate My Metallic Sonatas", "Ekalaka Lake", "Adaven, Nevada!",
                       "21/02/2012", "If I Had a Hi-Fi", 'A man, a plan, a canal -- Panama', "Madam, I'm Adam!", 
                       "^Madam, I'm Adam!$"]
        not_palindromes = ["Abracadabra"]

        palindromes.each do |pal|
            assert palindrome?(pal)
        end

        not_palindromes.each do |not_pal|
            assert !palindrome?(not_pal)
        end
    end


    def test_count_words
        assert_equal({'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1},
                     count_words('A man, a plan, a canal -- Panama'))
        assert_equal({'doo' => 3, 'bee' => 2},
                     count_words('Doo bee doo bee doo'))
    end

end
