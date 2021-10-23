=begin
# ------------------- Problem ---------------------
build an array with the entries being the first leeter plus ther other letters

# ------------------- Examples --------------------

# ------------------- Data ------------------------
an array

# ------------------- Algorithm -------------------
create empty string
create coutner
create array with slots for each spot in str
map s += str[counter]
counter += 1
str

# ------------------- Code -----------------------

=end

# def leading_substrings str
#   s = ''
#   counter = 0
#   (0...str.size).to_a.map do |_|
#     s += str[counter]
#     counter += 1
#     s
#   end
# end

# to many steps comparitively but still a decent solution i think

def leading_substrings(str)
  result = []
  0.upto(str.size - 1) do |i|
    result << str[0..i]
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
