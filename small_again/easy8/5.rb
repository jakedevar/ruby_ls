=begin
# ------------------- Problem ---------------------
take the string provided which is just one string
then take all the subsequent palindromes substrings (same backwards and forwards and is case-senative)
and return them as an arrray 

single letters do not count 

need to be sorted? no
empty string? no

# ------------------- Examples --------------------


# ------------------- Data ------------------------
use an array

# ------------------- Algorithm -------------------
init a result arr
in palindromes call the substrings method 
in which case i will call each do on substrings method arr return
res <, ele if then i am going to compare ele with ele revered  

# ------------------- Code -----------------------
=end

def leading_substrings str
  result = []
  0.upto(str.size - 1) do |i|
    result << str[0..i]
  end
  result.map(&:join)
end

def substrings str
  res = []
  chars = str.chars
  until chars.size == 0
    res << leading_substrings(chars)
    chars.shift
  end
  res.flatten
end

def palindromes(str)
  res = []
  substrings(str).each do |ele|
    res << ele if ele == ele.reverse && ele.size != 1
  end
  res
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
 ]