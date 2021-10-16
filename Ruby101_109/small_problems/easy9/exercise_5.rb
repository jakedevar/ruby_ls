#exercise_5.rb

# def uppercase?(string)
#   string.chars.all?(/[A-Z\d\W]/) ? true : false
# end

#really?? why didnt I think of this!!!!
def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true