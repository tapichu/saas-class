require 'hw2_part2'
require 'test/unit'

class TestCartesianProduct < Test::Unit::TestCase

  def test_2x2_cartesian_product
    expected_result = [[:a,4],[:a,5],[:b,4],[:b,5]]
    product = CartesianProduct.new([:a,:b], [4,5])

    assert_equal expected_result.count, product.count
    assert expected_result.all? { |elt| product.include? elt }
  end

  def test_3x2_cartesian_product
    expected_result = [[:a,4],[:a,5],[:b,4],[:b,5],[:c,4],[:c,5]]
    product = CartesianProduct.new([:a,:b,:c], [4,5])

    assert_equal expected_result.count, product.count
    assert expected_result.all? { |elt| product.include? elt }
  end

  def test_empty_collection
    assert_equal 0, CartesianProduct.new([:a,:b], []).count
  end

  def test_cartesian_product_of_ranges
    expected_result = [[2,3],[2,4],[2,5],[2,6],
                       [3,3],[3,4],[3,5],[3,6],
                       [4,3],[4,4],[4,5],[4,6]]
    product = CartesianProduct.new((2..4), (3..6))

    assert_equal expected_result.count, product.count
    assert expected_result.all? { |elt| product.include? elt }
  end

end
