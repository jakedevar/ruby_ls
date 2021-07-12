#exercise_2.rb
=begin
input a int and out put a century as a string relating to that number such as 
1st centruy 2nd 3rd and so on.
take an array of st nd rd and th and append them to 
=end
#this one stumped me and looking at the solution it is because
#I am lacking in the math department. 
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
return 'th' if [11, 12, 13].include?(century % 100)
last_digit = century % 10

case last_digit
when 1 then 'st'
when 2 then 'nd'
when 3 then 'rd'
else 'th'
end
end
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'