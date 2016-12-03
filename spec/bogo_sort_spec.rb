require "spec_helper"

describe BogoSort do
  it 'has a version number' do
    expect(BogoSort::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end

  describe 'Array#bogo_sort' do
    it 'return sorted Array of Integer' do
      expect([1, 2, 3, 4].bogo_sort).to eq [1, 2, 3, 4]
      expect([2, 4, 1, 3].bogo_sort).to eq [1, 2, 3, 4]
      expect([1, 3, 1, 4, -3, 5].bogo_sort).to eq [-3, 1, 1, 3, 4, 5]
    end

    it 'return sorted Array of Float' do
      expect([1.1, 1.2, 1.3, 1.4].bogo_sort).to eq [1.1, 1.2, 1.3, 1.4]
      expect([1.2, 1.4, 1.1, 1.3].bogo_sort).to eq [1.1, 1.2, 1.3, 1.4]
      expect([1.1, 1.3, 1.1, 1.4, -1.3, 1.5].bogo_sort).to eq [-1.3, 1.1, 1.1, 1.3, 1.4, 1.5]
    end

    it 'return sorted Array of String' do
      expect(%w(a b c d).bogo_sort).to eq %w(a b c d)
      expect(%w(b d a c).bogo_sort).to eq %w(a b c d)
      expect(%w(a c a d c e).bogo_sort).to eq %w(a a c c d e)
    end

    it 'return sorted Array of Symbol' do
      expect([:a, :b, :c, :d].bogo_sort).to eq [:a, :b, :c, :d]
      expect([:b, :d, :a, :c].bogo_sort).to eq [:a, :b, :c, :d]
      expect([:a, :c, :a, :d, :c, :e].bogo_sort).to eq [:a, :a, :c, :c, :d, :e]
    end

    it 'return sorted Array of some Classes that can be compared' do
      expect([1, 1.2, 2, 3.4].bogo_sort).to eq [1, 1.2, 2, 3.4]
      expect([1.2, 3.4, 1, 2].bogo_sort).to eq [1, 1.2, 2, 3.4]
      expect([1.1, 1.3, 1, 2, -1.3, 5.5].bogo_sort).to eq [-1.3, 1, 1.1, 1.3, 2, 5.5]
    end

    it 'doesn\'t return sorted Array of some Classes that can\'t compared' do
      expect([1, 'b', 1.3, :d].bogo_sort).to eq nil
    end
  end
  describe 'Array#bogo_sort!' do
  end
end
