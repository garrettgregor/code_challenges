class Million
  def find_matches(array1, array2, array3)
    # You are given three arrays of equal size. Each array has 1 million RANDOM integer values.
    # Assume that each array is already sorted in ascending order and that no individual array has any duplicate values.
    # Your goal is to write a method/function that will return an array of any/all values which are present in all three arrays.
    # Bonus: Once you’ve found a working solution, try to optimize to run in O(n) time and 1x space complexity.

    ## Questions
    ### will there always be only three arrays?
    ### can I use built in ruby methods?

    # I could either to go through all of the arrays, plug those into another array that contains all values, look for values that appear three times
    # OR..
    # I could go integer by integer in each array and check if the number appears in arr2 and # then shovel it into another array

    ### Built in ruby method
    # array1.intersection(array2, array3)

    # Manual method
    all_values = []
    all_values << array1
    all_values << array2
    all_values << array3

    all_values.flatten!(-1)

    repeated = []

    all_values.each do |value|
      if all_values.count(value) == 3
        repeated << value
      end
    end

    return repeated.uniq.sort

    ## Question:
  end
end