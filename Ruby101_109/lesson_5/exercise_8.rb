#exercise_8.rb
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
#out put all of the vowels from the strings

vowel_storage = []
hsh.each_pair do |key, value|
  value.each do |string|
    match = string.chars
    match.each do |char|
      if char == 'e'
        vowel_storage << char
      elsif char == 'a'
        vowel_storage << char
      elsif char == 'i'
        vowel_storage << char
      elsif char == 'o'
        vowel_storage << char
      elsif char == 'u'
        vowel_storage << char
      elsif char == 'y'
        vowel_storage << char

      end
    end
  end
end

p vowel_storage

#LS solution man i even rememebr this solution from way back when. i thought wow if i could just store the vowels. it looks like i really just need to do
#everything in the course again so i can gain a deeper understanding
vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end
# e
# u
# i
# o
# o
# u
# e
# o
# e
# e
# a
# o