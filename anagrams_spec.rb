require_relative 'anagrams'

describe 'is_anagram?' do
  it 'should return true for a simple anagram' do
    expect(is_anagram?('cinema', 'iceman')).to be(true)
  end

  it 'should return false for a non-anagram' do
    expect(is_anagram?('foo', 'bar')).to be(false)
  end

  # You'll want to write more tests. What kinds of edge cases
  # should you cover? Check out the "Guidelines" section
  # for examples of things you might test.
  # What other tests should you write?
end
