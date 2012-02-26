require 'hw1'
require 'test/unit'

class Foo
    attr_accessor_with_history :bar
end

class TestAdvancedOOP < Test::Unit::TestCase

    def test_attr_accessor_with_history
        f = Foo.new
        assert_not_nil f

        f.bar = 3
        f.bar = :wowzo
        f.bar = 'boo!'

        assert_equal [nil, 3, :wowzo, 'boo!'], f.bar_history
    end

    def test_attr_accessor_with_history_different_instances
        f = Foo.new
        f.bar = 1
        f.bar = 2
        f = Foo.new
        f.bar = 4

        assert_equal [nil, 4], f.bar_history
    end

end
