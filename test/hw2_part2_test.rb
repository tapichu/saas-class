require 'hw2_part2'
require 'test/unit'

class TestCartesianProduct < Test::Unit::TestCase

    def test_2x2_cartesian_product
        result = [[:a,4],[:a,5],[:b,4],[:b,5]]
        product = CartesianProduct.new([:a,:b], [4,5])

        assert_equal result.count, product.count
        assert product.all? { |elt| result.include? elt }
    end

    def test_3x2_cartesian_product
        result = [[:a,4],[:a,5],[:b,4],[:b,5],[:c,4],[:c,5]]
        product = CartesianProduct.new([:a,:b,:c], [4,5])

        assert_equal result.count, product.count
        assert product.all? { |elt| result.include? elt }
    end

    def test_empty_collection
        assert_equal 0, CartesianProduct.new([:a,:b], []).count
    end

end
