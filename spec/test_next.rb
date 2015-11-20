require 'test/unit'
require_relative '../lib/array_utility'

class TestNext < Test::Unit::TestCase
  using ArrayUtility
  def test_next
    assert_equal(2, [1, 2, 3].next(1))
    assert_equal(nil, [1, 2, 3].next(3))
  end
end
