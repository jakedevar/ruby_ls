=begin
# ------------------- Problem ---------------------
take the string and sort it so that the capital letters are in front of the lowercasae leter all in alphabetical order

# ------------------- Examples --------------------
no numbers
there is an empty string
no numbers or sepcial characters including spaces

# ------------------- Data ------------------------
an array obvi

# ------------------- Algorithm -------------------
take the string and downcase then sort the map with index if string downcasesort  index - 1 is not equal to current character then upcase char

# ------------------- Storm -----------------------
hypo, i think this is going to capitalize every char after the first one
actual scratch that i think this will work because its not mutating the method
=end

# def find_children str
#   chars = str.downcase.chars.sort
#   chars.map.with_index { |chr, i| chr != chars[i-1] || i == 0 ? chr.upcase : chr}.join
# end

# not a bad solution by i knew there was an easiwer one and this is it

def find_children(str)
  str.chars.sort_by { |char| [char.downcase, char] }.join
end

p find_children("ABab") #== "AaBb"

p find_children("AaaaaZazzz") #== "AaaaaaZzzz"

p find_children("CbcBcbaA") #== "AaBbbCcc"

p find_children("xXfuUuuF") == "FfUuuuXx"

p find_children("") == ""
