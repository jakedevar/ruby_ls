#exercise_8.rb

=begin
def palindrome?(string)
  string.chars.reverse.join == string
end

#or the LS solution 
def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
=end
#further exploration
def palindrome?(arr)
  arr.reverse == arr
end

p palindrome?([3, 5, 3,]) == true