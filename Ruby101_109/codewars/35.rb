=begin
# ------------------- Problem ---------------------
create a wave amongst the word like at a baseball game with capital letters
make sure bland spaces are skipped

# ------------------- Examples --------------------

# ------------------- Data ------------------------
a string with all lowercase letters or empty with no special characters and spaces

# ------------------- Algorithm -------------------
take the length times with an i and then upcase the letter with index and append to a result array

# ------------------- Storm -----------------------

=end

# def wave(string)
#   return [] if string == ''
#   result = []
#   chars = string.chars
#   counter = 0
#   loop do
#     break if counter == string.size
#     if chars[counter] != ' '
#       chars[counter].upcase!
#       result << chars.join
#       chars.map(&:downcase!)
#       counter += 1
#     else
#       counter += 1
#       next
#     end
#   end
#   result
# end

=begin
# ------------------- Problem ---------------------
take a string of all lower case letters and and do the wave with the string skippping the spaces

# ------------------- Examples --------------------
something with leading and trailing spaces should keep spaces but be ignored also with spaces in between

# ------------------- Data ------------------------
of couurse a chars arr will suffice

# ------------------- Algorithm -------------------
chars the array
iterate through the word and upcase a single char at a time unless space then next

i am going to build an array by doing 0 to size -1 times do
  then downcause 0 to i -1 upcase i and downcas i +1 to strinsize -1

def method
  chars
  resarr
  0..times do I
    what i said above append to array with concat
    return arr
end

# ------------------- Storm -----------------------
should i build a string an add to arr first ?

huypothosis: it wont upcase the first leter or it will do the whole array on first iteration becaue it wont stop there

  do the same thing except with each with index
=end

def wave(str)
  chars = str.chars
  res = []
  chars.each_with_index do |chr, i|
    next if chr == ' '
    res << str[0...i].downcase + chr.upcase + str[i + 1..-1].downcase
  end
  res
end

p wave("hello") #== ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

p wave("codewars") #== ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]

p wave("") #== []

p wave("two words") #== ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]

p wave(" gap ") #== [" Gap ", " gAp ", " gaP "]
