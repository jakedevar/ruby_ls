#exercise_8.rb

def double_consonants(string)
  string.chars.map do |ele|
   /[^aeiou^0-9^\-^' '\!]/i.match(ele) ? ele * 2 : ele
  end.join
end

#the only reason I am not typing this one out is because I actually know how to do this already and it was an idea that came to mine before I did the Regex
#this will save me time and I dont think I would be leanring anything particularly new 
CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

p double_consonants('String') #== "SSttrrinngg"
p double_consonants("Hello-World!") #== "HHellllo-WWorrlldd!"
p double_consonants("July 4th") #== "JJullyy 4tthh"
p double_consonants('') #== ""