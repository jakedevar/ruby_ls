=begin
------------------- Problem ---------------------
make the method change every letter in the string to the third letter following it in the alphabet

------------------- Examples --------------------
given

------------------- Data ------------------------
using arrays for this also might use gsub

------------------- Algorithm -------------------
i am going to gsub the string and going to call a block on the regex for a-w
then gsub(x..z) with a-z
------------------- Code ------------------------
=end

def letter_changes str
  str = str.gsub(/[a-w]/i) {|chr| chr.next.next.next}
  str = str.gsub(/[x]/, 'a') 
  str = str.gsub(/[y]/, 'b') 
  str = str.gsub(/[z]/, 'c')
  str = str.gsub(/[X]/, 'A')
  str = str.gsub(/[Y]/, 'Y')
  str = str.gsub(/[Z]/, 'C') 
end

 p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')
