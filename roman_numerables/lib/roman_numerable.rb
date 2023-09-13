# Rewrite the question in your own words
# Answer these questions:
# What assumptions will you make about this problem if you cannot ask any more clarifying questions?
# What are your reasons for making those assumptions?
# What are your initial thoughts about this problem? (high level design, 2-3 sentences)
# Identify the elements of this problem
# Searching of Data
# Sorting of Data
# Pattern Recognition
# Build/Navigate a Grid
# Math
# Language API knowledge
# Optimization
# Consider which data structure(s) do you think you’ll use? What pros/cons do you see with that choice?
# Write out a few lines of initial pseudocode: (mid-level design, NOT REAL CODE)
# Write your implementation code and test your solution (low-level design)

class Roman
  def to_roman(integer)
    roman_numerals = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }

    output = ''

    roman_numerals.each do |k, v|
      while integer >= k
        output += v
        integer -= k
      end
    end

    return output
  end
end
