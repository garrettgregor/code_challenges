class Fibber
  def numbers(quantity)
    # always start with 0 and 1, which count for part of the output
    output = [0, 1]

    a = 0
    b = 1

    until output.length == quantity
      sum = a + b
      output << sum
      a = b
      b = sum
    end

    string = ""

    until output.empty?
      string << (output.slice!(0..4).join(" ") + "\n")
    end
    
    string

    # for the desired quantity, I want to return 0, 1 and then

    # the sums of each of the previous values

    # slice off 5 at a time

  end
end
