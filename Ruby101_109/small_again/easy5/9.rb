=begin
# ------------------- Problem ---------------------
delete all the runs of a character in the string

# ------------------- Examples --------------------

# ------------------- Data ------------------------
using an array for this one

# ------------------- Algorithm -------------------

str.chars
str.chars.eachwithindex delete at charsindex+1 if chr == str[i+1]
hypo this wont work either because of mutating objects but lets see
# ------------------- Code -----------------------

=end

def crunch(string)
  count = 0
  str = ''
  loop do
    str << string[count] if string[count] != string[count + 1]
    count += 1
    break if count == string.size || string == ''
  end
  str
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') == 'a'
p crunch('') == ''
