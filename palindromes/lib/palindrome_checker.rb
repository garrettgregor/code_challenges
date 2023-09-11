# check the length of the string provided
# then do that_number times.do pop into new array
# then check if that new array is equal to the old array

class PalindromeChecker
  def palindrome?(string)
    regx_string = string.downcase.gsub(/[[:blank:]!]/, "")
    reverse_string = []

    regx_string.length.times do
      reverse_string << regx_string.slice!(-1)
    end

    if reverse_string.join == string.downcase.gsub(/[[:blank:]!]/, "")
      return true
    else
      return false
    end
  end
end