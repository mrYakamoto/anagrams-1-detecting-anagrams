require_relative '../anagrams'

describe 'anagrams?' do
  it 'returns true if inputs are anagrams of each other' do
    anagrams = anagrams?("melon", "lemon")
    expect(anagrams).to eq true
  end
   it 'returns true if order of inputs reversed' do
    anagrams = anagrams?("lemon","melon" )
    expect(anagrams).to eq true
  end
  it 'returns false if inputs are not anagrams of each other' do
    anagrams = anagrams?("ward", "bunny")
    expect(anagrams).to eq false
  end
  it 'returns true if both inputs are the same' do
    anagrams = anagrams?("bunny", "bunny")
    expect(anagrams).to eq true
  end
  it 'Anagrams are case-insensitive' do
    anagrams = anagrams?("MELON", "lemon")
    expect(anagrams).to eq true
  end
  it "The arguments don't need to be valid English words" do
    not_words = anagrams?("abcde2", "c2abed")
    not_words2 = anagrams?("kilso", "osilk")
    expect(not_words).to eq true
    expect(not_words2).to eq true
  end

end



