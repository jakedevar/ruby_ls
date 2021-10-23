=begin
# ------------------- Problem ---------------------
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# ------------------- Examples --------------------
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''

# ------------------- Data ------------------------
inputs a string a returns a string, have to convert to array in the method to reverse words

# ------------------- Algorithm -------------------

# ------------------- Storm -----------------------
take the string in question and split(/ /) use reverse_each to append to new array and then join(', ')

=end
def reverse_sentence(sentance)
  result = []
  sentance.split(/ /).reverse_each { |ele| result << ele }
  result.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
