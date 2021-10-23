=begin
def leap_year?(year)
  if (year % 400 == 0 || year % 4 == 0) && year % 100 != 0
    true
  elsif year % 100 ==0
    false
  elsif year % 4 ==0
    true
  else
    false
  end

end

#LS soltuion i had to give in after beating it for a while
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end
#wait I actually had gotten it right once !! i thought that all the expressoins below had to evaluate to true but even the LS solution does not
# it looks like there are some edge cases built in and you had to read them in order to understand what was going on
=end
def leap_year?(year)
  return true if year % 400 == 0 || (year % 100 != 0 && year % 4 == 0)
  false
end
p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
