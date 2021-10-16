def double_consonants string
  str = ''
  string.each_char {|ele| ele =~ /[^aeiou' '1-9\!\,\-\.]/ ? str << ele * 2 : str << ele}
  str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""