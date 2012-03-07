require 'hw1_part3'
require 'test/unit'

class TestAnagrams < Test::Unit::TestCase

  def test_combine_anagrams
    anagrams = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
    expected = [
      ['cars', 'racs', 'scar'], ['four'], ['for'], ['potatoes'], ['creams', 'scream']
    ].sort

    # Order does not matter
    groups = combine_anagrams(anagrams).sort
    groups.each_with_index { |g, i| assert_equal expected[i].sort, g.sort }
  end

  def test_combine_anagrams_case_preserved
    anagrams = ['Cars', 'for', 'Potatoes', 'racs', 'Four','SCAR', 'creams', 'scream']
    expected = [
      ['Cars', 'racs', 'SCAR'], ['Four'], ['for'], ['Potatoes'], ['creams', 'scream']
    ].sort

    # Order does not matter
    groups = combine_anagrams(anagrams).sort
    groups.each_with_index { |g, i| assert_equal expected[i].sort, g.sort }
  end

end
