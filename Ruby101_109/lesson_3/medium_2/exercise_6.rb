# exercise_6.rb

# How could the following method be simplified
# without changing its return value?
=begin
def color_valid(color)
  color == "blue" || color == "green" ? true : false
end

p color_valid('navy')

#wow ls solution was wwaaaaaayyyy better
=end

def color_valid(color)
  color == "blue" || color == 'green'
end
