def double_consonants(string)
  str = ''
  string.each_char do |ele|
    str << (ele =~ /[^aeiou' '1-9\!\,\-\.]/ ? ele * 2 : ele)
  end
  str
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
