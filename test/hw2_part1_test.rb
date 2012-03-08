require 'hw2_part1'
require 'test/unit'

class TestMetaprogramming < Test::Unit::TestCase

  def test_currency_conversion
    assert_equal 5 / 1.292, 5.dollars.in(:euros)
    assert_equal 10 * 1.292 / 0.019, 10.euros.in(:rupees)
    assert_equal 80 * 0.019 / 0.013, 80.rupees.in(:yen)
  end

  def test_currency_conversion_singular
    assert_equal 1 / 0.019, 1.dollar.in(:rupees)
    assert_equal 10 * 0.019 / 1.292, 10.rupees.in(:euro)
    assert_equal 1 * 1.292, 1.euro.in(:dollar)
  end

  def test_string_palindromes
    palindromes = ["Satan Oscillate My Metallic Sonatas", "Ekalaka Lake",
                   "Adaven, Nevada!", "21/02/2012", "If I Had a Hi-Fi",
                   "A man, a plan, a canal -- Panama", "Madam, I'm Adam!",
                   "Anita lava la tina", "Era poeta e di nome Semonide. Ateo pare.",
                   "^Madam, I'm Adam!$", ""]
    not_palindromes = ["Abracadabra"]

    palindromes.each { |pal| assert pal.palindrome? }
    not_palindromes.each { |not_pal| assert !not_pal.palindrome? }
  end

  def test_enumerable_palindromes
    palindromes = [ [1,2,3,2,1], [1,1], [:one, :two, :two, :one] ]
    not_palindromes = [ [1,2,3,1,2], [:one, :two] ]

    palindromes.each { |pal| assert pal.palindrome? }
    not_palindromes.each { |not_pal| assert !not_pal.palindrome? }
  end

  def test_hash_palindromes
    assert_nothing_raised do
      { :one => 1, :two => 2, :one => 1 }.palindrome?
    end
  end

  def test_non_array_non_hash_enumerable
    assert !(1..5).palindrome?
    assert (1...2).palindrome?
  end

end
