# def substrings str
#   res = []
#   chars = str.chars
#   chars.each_index do |ind1|
#     chars.each_index do |ind2|
#       res << chars[ind1..ind2] 
#     end
#   end
#   res.map!(&:join).delete('')
#   res.uniq
# end

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


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]