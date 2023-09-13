# Given an n x n array, write a method that returns the array elements arranged from outermost elements to the middle element, traveling clockwise.

# A good way to visualize this is to picture the spiral shell of a snail!

# Rewrite the question in your own words
# take in a clockwise spiral, the elements within an array matrix and rearrange them in a single flattened array
# Answer these questions:
# What assumptions will you make about this problem if you cannot ask any more clarifying questions?
## the assumptions I will make are that we are going to use a 3x3 array
## also assume we will always have integers and that there won't be duplicates
# What are your reasons for making those assumptions?
## making those assumptions just so we can see it
# What are your initial thoughts about this problem? (high level design, 2-3 sentences)
# Identify the elements of this problem
## Searching of Data
## Sorting of Data
## Pattern Recognition
## Build/Navigate a Grid
# Math
# Language API knowledge
# Optimization
# Consider which data structure(s) do you think you’ll use? What pros/cons do you see with that choice?
# arrays
# Write out a few lines of initial pseudocode: (mid-level design, NOT REAL CODE)
## first, see how big the array matrix is
## from there, we will work our way down the last elements of each arracy
## we will work backwards through the last array, then work up the first elements of each array minus the first array
## and then go from the n-1 array to the last element within that array
# Write your implementation code and test your solution (low-level design)

## OR

## establish n as length of array matrix
## shift all elements from the first array until the array is empty
## move to the next array and pop the last element
## continue doing that until you reach the last array
## in the last array, pop all elements until the array is empty
## go to the n-1 array

class Snail
  # def snail(array_matrix)
  #   n = array_matrix[0].length

  #   output = []

  #   while array_matrix.any?
  #     output += array_matrix.shift
  #     array_matrix.each do |row|
  #       output << row.pop
  #       if array_matrix.any?
  #         output += (array_matrix.pop || []).reverse
  #       end
  #       array_matrix.reverse_each do |row|
  #         if array_matrix.any?
  #           output << row.shift
  #         end
  #       end
  #     end
  #   end
  #   # array_matrix[0].shift(n)
  #   return output.flatten

  # end
  def snail(array_matrix)
    output = []

    while array_matrix.any?
      output += array_matrix.shift

      # Move downward along the last column
      array_matrix.each do |row|
        output << row.pop
      end

      # Move from right to left along the last row
      if array_matrix.any?
        output += array_matrix.pop.reverse
      end

      # Move upward along the first column
      array_matrix.reverse_each do |row|
        if array_matrix.any?
          output << row.shift
        end
      end
    end

    output
  end
end