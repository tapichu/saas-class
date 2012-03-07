require 'hw1_part5'
require 'test/unit'

class Foo
  attr_accessor_with_history :bar
end

class Bar
  attr_accessor_with_history :foo
  attr_accessor_with_history :bar
end

class TestAdvancedOOP < Test::Unit::TestCase

  def test_single_attr_accessor_with_history
    f = Foo.new
    assert_not_nil f

    f.bar = 3
    f.bar = :wowzo
    f.bar = 'boo!'

    assert_equal [nil, 3, :wowzo, 'boo!'], f.bar_history
  end

  def test_single_attr_accessor_with_history_different_instances
    f = Foo.new
    f.bar = 1
    f.bar = 2
    f = Foo.new
    f.bar = 4

    assert_equal [nil, 4], f.bar_history
  end

  def test_multiple_attr_accessor_with_history
    b = Bar.new
    b.bar = 3
    b.bar = :wowzo
    b.bar = 'boo!'
    b.foo = 4
    b.foo = :woozy
    b.foo = 'boom!'

    assert_equal [nil, 3, :wowzo, 'boo!'], b.bar_history
    assert_equal [nil, 4, :woozy, 'boom!'], b.foo_history
  end

  def test_multiple_attr_accessor_with_history_different_instances
    b = Bar.new
    b.bar = 1
    b.bar = 2
    b.foo = 3
    b.foo = 4

    b = Bar.new
    b.bar = 4
    b.foo = 5

    assert_equal [nil, 4], b.bar_history
    assert_equal [nil, 5], b.foo_history
  end

end
