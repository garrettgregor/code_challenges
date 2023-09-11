# Given two strings can you rearrange the letters from one to make another
# listen, silent
# => true
# debit card, bad credit
# => true

# This is similar to the problem that Chris had us do with finding whether a number was "new"

# We need to first find all of the permutations possible of the first string, and then see if the second string is included in that


class AnagramChecker
  def anagram?(string1, string2)
    if string2.length > string1.length || string2.length < string1.length
      return false
    elsif string2.length == string1.length
      
    end
  end
end