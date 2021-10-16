=begin
# ------------------- Problem ---------------------
pretend that # are like backspaces in a string 
take in a string with letters all lower case and ofcouse # and print 
  what the string would be if all were backspaces 

# ------------------- Examples --------------------
dosent matter if there is any other characters just the string 

# ------------------- Data ------------------------
going with an array on this one easier to work with 

# ------------------- Algorithm -------------------
def clean string str
  i = 1
  result arr 
  str.chars 
  loop do 
    if the str index +1 is a backspace then counter plus 2 else append to res 
      break when counter is >= str.size
end

that wont work because not every letter is anteceded by a #

def 
  counter = 0
  loop do
    if str [coutn] == the back then
      delete at ind and indx 2
      counter =0
    else 
      counter += 1
# ------------------- Storm -----------------------
make it so chars iterates through and creats a new arr with the indeces of # then iterate through and 

use loop with counter to iterat through
reset counter to 0 after deleting that index plus previous indx and then iterate through string again
=end

# def clean_string str
#   i = 1
#   res = []
#   loop do 
#     return res if i >= str.size

#   end
# end
# this didnt work look at comments

# def clean_string str
#   chars = str.chars
#   digi = 0
#   loop do 
#     break if digi >= str.size 
#     if chars[digi] == '#'
#       chars.delete_at(digi) 
#       chars.delete_at(digi-1)
#       digi = 0 
#     else
#       digi += 1
#     end
#   end
#   chars.empty? ? '' : chars.join
# end

# def clean_string(str)
#   str.chars.reduce('') { |result, chr| chr == '#' ? result.chop : result << chr}
# end


p clean_string('abc#d##c') #== "ac"

p clean_string('abc####d##c#') #== ""