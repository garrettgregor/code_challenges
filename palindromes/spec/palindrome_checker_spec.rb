require 'palindrome_checker'

RSpec.describe PalindromeChecker do
  it "returns true if a string is an anagram of the first one" do
    abba = PalindromeChecker.new.palindrome?('abba')
    racecar = PalindromeChecker.new.palindrome?('Racecar')
    nurses = PalindromeChecker.new.palindrome?('Nurses run!')

    expect(abba).to be(true)
    expect(racecar).to be(true)
    expect(nurses).to be(true)
  end
end