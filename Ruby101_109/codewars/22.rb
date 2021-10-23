=begin
# ------------------- Problem ---------------------
see if a poriton of string 1 can be rearanged to make the string two

# ------------------- Examples --------------------

# ------------------- Data ------------------------

# ------------------- Algorithm -------------------
does string1.sort.include string2.sort
return false if string chars any? returns false

# ------------------- Storm -----------------------
=end

def scramble(string1, string2)
  string1 = string1.chars
  string2 = string2.chars
  string2.each do |n|
    if string1.include?(n) == false
      return false
    end
  end
  true
end

p scramble('rkqodlw', 'world') == true

p scramble('cedewaraaossoqqyt', 'codewars') == true

p scramble('katas', 'steak') == false

p scramble('rkqodlw', 'world') == true

p scramble('cedewaraaossoqqyt', 'codewars') == true

p scramble('katas', 'steak') == false

p scramble('scriptjava', 'javascript') == true

p scramble('scriptingjava', 'javascript') == true
