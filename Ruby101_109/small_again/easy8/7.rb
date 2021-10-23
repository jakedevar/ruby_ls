def repeater(str)
  s = ''
  str.each_char { |chr| s << chr * 2 }
  s
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
