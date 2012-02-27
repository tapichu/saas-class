require 'hw1_part4'
require 'test/unit'

class TestBasicOOP < Test::Unit::TestCase

    def test_dessert
        ice_cream = Dessert.new 'Ice Cream', 350
        assert_not_nil ice_cream
        assert_equal 'Ice Cream', ice_cream.name
        assert_equal 350, ice_cream.calories
        assert !ice_cream.healthy?
        assert ice_cream.delicious?

        ice_cream.name = 'Ice'
        ice_cream.calories = 199
        assert_equal 'Ice', ice_cream.name
        assert_equal 199, ice_cream.calories
        assert ice_cream.healthy?
        assert ice_cream.delicious?
    end

    def test_jelly_bean
        jelly_bean = JellyBean.new 'bean', 30, 'strawberry'
        assert_not_nil jelly_bean
        assert_equal 'bean', jelly_bean.name
        assert_equal 30, jelly_bean.calories
        assert_equal 'strawberry', jelly_bean.flavor
        assert jelly_bean.healthy?
        assert jelly_bean.delicious?

        jelly_bean.flavor = 'black licorice'
        assert !jelly_bean.delicious?

        jelly_bean.flavor = 'Black Licorice'
        assert !jelly_bean.delicious?
    end

end
