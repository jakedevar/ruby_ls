=begin
# ------------------- Problem ---------------------
return a string of the longest running alphabetical ordered string within the string argument given

# ------------------- Examples --------------------
p longest('asd') == 'as'

p longest('nab') == 'ab'

p longest('abcdeapbcdef') == 'abcde'

p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'

p longest('asdfbyfgiklag') =='fgikl'

p longest('z') == 'z'

p longest('zyba') == 'z'

# ------------------- Data ------------------------
a simple string of lowercase characters no special characters all lower case

# ------------------- Algorithm -------------------
create an array of alpha bet
chars array the string
check index of element to alpha
save ele in array as long as index is equal or greater than last index else append that store array to result and empty store array
save chars in another array
if then check so array can be set to zero if thats the case
  set ind to index if index is >= ind

# ------------------- Storm -----------------------
=end
ALPHA = ('a'..'z').to_a
def longest(string)
  return string if string.size == 1
  result = []
  storage = []
  ind = 0
  string.chars do |ele|
    if ALPHA.index(ele) >= ind
      ind = ALPHA.index(ele)
      storage << ele
    else
      result << storage
      storage = []
      storage << ele
      ind = ALPHA.index(ele)
    end
  end
  result.sort.max { |a, b| a.length <=> b.length }.join
end

p longest('asd') #== 'as'

p longest('nab') #== 'ab'

p longest('abcdeapbcdef') #== 'abcde'

p longest('asdfaaaabbbbcttavvfffffdf') #== 'aaaabbbbctt'

p longest('asdfbyfgiklag') #=='fgikl'

p longest('z') #== 'z'

p longest('zyba') #== 'z'
