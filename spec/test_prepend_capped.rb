require 'test/unit'
require_relative '../lib/array_utility'

class TestPrependCapped < Test::Unit::TestCase
  using ArrayUtility
  def test_prepend_capped
    assert_equal([4, 1, 2], [1, 2, 3].prepend_capped(4, 3))
    assert_equal([4, 1, 2], [1, 2].prepend_capped(4, 3))
    assert_equal([4], [1, 2].prepend_capped(4, 1))
  end
end
