def palindromic_number?(number)
  num = number.to_s.reverse
  return true if num == number.to_s
  false
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true