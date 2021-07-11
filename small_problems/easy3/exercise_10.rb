#exercise_10.rb
def palindromic_number?(num)
  num.to_s.chars.reverse.join.to_i == num
end


p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

#LS solution
def palindromic_number?(number)
  palindrome?(number.to_s)
end
#i need to review the other excercises in order 