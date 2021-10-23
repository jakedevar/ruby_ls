# exercise_1.rb
=begin #feeling bad because of time and medicine also no food
#rushing rn to finish book
a = "laboratory"
b = "experiment"
c = "pans labyrinth"
d = "elaborate"
e = "polar bear"

def x do |y|
  if y.includes?("lab")
    puts y
  else
    puts "not here"
  end
end

x(a)
x(b)
x(c)
x(d)
x(e)
=end

def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end

check_in("laboratory")
check_in("experiment")
check_in("pans labyrinth")
check_in("elaborate")
check_in("polar bear")
