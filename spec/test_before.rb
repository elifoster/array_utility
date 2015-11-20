require 'test/unit'
require_relative '../lib/array_utility'

class TestBefore < Test::Unit::TestCase
  using ArrayUtility
  def test_before
    assert_equal(2, [1, 2, 3].before(3))
    assert_equal(3, [1, 2, 3].before(1))
  end
end
