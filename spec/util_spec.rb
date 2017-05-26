require 'spec_helper'

describe ArrayUtility do
  using ArrayUtility

  describe '#next' do
    it 'gets the next value in an array' do
      expect([1, 2, 3].next(1)).to eq 2
      expect([1, 2, 3].next(3)).to be_nil
    end
  end

  describe '#prepend_capped' do
    it 'prepends a value with a maximum number of values in the array' do
      value = [1, 2, 3]
      expect(value.prepend_capped(4, 3)).to eq [4, 1, 2]
      expect(value).to eq [4, 1, 2]

      value = [1, 2]
      expect(value.prepend_capped(4, 3)).to eq [4, 1, 2]
      expect(value).to eq [4, 1, 2]

      value = [1, 2]
      expect(value.prepend_capped(4, 1)).to eq [4]
      expect(value).to eq [4]
    end
  end

  describe '#before' do
    it 'gets the previous value in an array' do
      expect([1, 2, 3].before(3)).to eq 2
      expect([1, 2, 3].before(1)).to eq 3
    end
  end
end
