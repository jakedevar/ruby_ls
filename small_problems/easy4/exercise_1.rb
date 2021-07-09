

def short_long_short(string1, string2)
  if string1.length < string2.length
    string1 + string2 + string1
  else
    string2 + string1 + string2
  end
end


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

#LS solution, though they said that this method might make it harder to understand whats going on inside and that is more important
#clarity trumps code density 
def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end