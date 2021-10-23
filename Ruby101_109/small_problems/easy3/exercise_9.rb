# exercise_9.rb
def palindrome?(string)
  return true if string.downcase.reverse == string.downcase
  false
end

p palindrome?('madam') == true
p palindrome?('Madam') == true           # (case does not matter)
p palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p palindrome?('356653') == true
p palindrome?('356a653') == true
p palindrome?('123ab321') == false

# LS solution i couldent figure this one out and shamefully i was too lazy to look at the documentation. I need to make flash cards of methods
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end
