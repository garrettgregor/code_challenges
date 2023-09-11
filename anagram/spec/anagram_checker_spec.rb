require 'anagram_checker'

RSpec.describe AnagramChecker do
  it "returns true if a string is an anagram of the first one" do
    checker = AnagramChecker.new.anagram?('listen', 'silent')

    expect(checker).to be(true)
  end
end