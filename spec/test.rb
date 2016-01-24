require 'minitest/autorun'
require_relative '../lib/array_utility'

using ArrayUtility

describe 'ArrayUtility' do
  it 'gets the next value in an array' do
    assert_equal(2, [1, 2, 3].next(1))
    assert_equal(nil, [1, 2, 3].next(3))
  end

  it 'prepends a value with a maximum number of values in the array' do
    assert_equal([4, 1, 2], [1, 2, 3].prepend_capped(4, 3))
    assert_equal([4, 1, 2], [1, 2].prepend_capped(4, 3))
    assert_equal([4], [1, 2].prepend_capped(4, 1))
  end

  it 'gets the previous value in an array' do
    assert_equal(2, [1, 2, 3].before(3))
    assert_equal(3, [1, 2, 3].before(1))
  end
end