def short_long_short(one, two)
  return (one + two + one) if one.size < two.size
  return (two + one + two) if two.size < one.size
end

p short_long_short('abc', 'defgh') #== "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
