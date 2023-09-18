class PalSum
  # generate all palindromes between 0-1000
  # create nested arrays of the palindromes
  # add the two numbers together
  # store that in the array as a third element
  # check to see if the third is element is greater or equal to 1000
  # if it is, shovel it into the output array
  # return the output array with a limit of 25 integers
  def is_palindrome?(number)
    number == number.to_s.reverse.to_i
  end

  def first_twenty_five
    nums = Array(0..10_000)

    palindromes = nums.map do |num|
      palindrome = num.to_s.reverse.to_i
      sum = num + palindrome
      [num, palindrome, sum]
    end

    all = []

    palindromes.each do |palindrome|
      if palindrome[2] >= 1000 && is_palindrome?(palindrome[2])
        all << palindrome[0]
      end
    end

    return all.first(25)
  end
end