=begin
# ------------------- Problem ---------------------
how many letters have to be deleted in order for the two strings given to be anagrams
return an integer showing how many need to be removed

# ------------------- Examples --------------------

# ------------------- Data ------------------------
two strings one of which may be empty and it looks like they vary in length

# ------------------- Algorithm -------------------
since i dont have to check if its actually an anagram all i have to do is asume that the difference in letters will be the answer
so string length minus string lenght if less than one tims be -1
lol nvm

use regex to count thing

# ------------------- Storm -----------------------

=end

def anagram_difference(str1, str2)
  alpha = ('a'..'z').to_a
  sum = 0
  alpha.each do |chr|
    sum += ((str1.count(chr)) - (str2.count(chr))).abs
  end
  sum
end

p anagram_difference('', '') #== 0

p anagram_difference('a', '') #== 1

p anagram_difference('', 'a') #== 1

p anagram_difference('ab', 'a') #== 1

p anagram_difference('ab', 'ba') #== 0

p anagram_difference('ab', 'cd') #== 4

p anagram_difference('aab', 'a') #== 2

p anagram_difference('a', 'aab') #== 2

p anagram_difference('codewars', 'hackerrank') #== 10

p anagram_difference('nowayjose', 'ifucktimbl')
