=begin
# ------------------- Problem ---------------------
Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain
five or more characters reversed.
Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# ------------------- Examples --------------------
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# ------------------- Data ------------------------
inputs a string and ouputs a string

# ------------------- Algorithm -------------------
take string split by (' ')
use each to iterate through and retrun to a result array if word is over 5 size and reverse it

# ------------------- Storm -----------------------
split if contains ' '

=end
def reverse_words(string)
  result = []
  string.split(/ /).each do |ele|
    result << (ele.size > 4 ? ele.reverse : ele)
  end
  result.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
