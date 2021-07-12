=begin
def ascii_value(string)
  string.chars.map { |char| char.ord}.sum
end

#note to self. there is no map function for strings. need to chars then map for iteration
#ls soltuion
def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end
=end
def ascii_value(string)
  sum = 0
   string.each_char { |char| p char.ord.chr == char }
  
end


ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0