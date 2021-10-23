# exercise_3.rb
=begin
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
# assignment is not mutation outside of the method scope
# there for the original vars will remain the same and
# it will output one, two, three (printed like this for brevity)
# I was correct!!! it looks like i understand scope ok now

# oh wait there is more hold on

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#same result as above
# Correct!!!!
=end

def mess_with_vars(one, two, three)
  one.gsub!("one", "two")
  two.gsub!("two", "three")
  three.gsub!("three", "one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# had to look at the docs on gsub for this one
# but it looks like it mutates the caller so it will print
# two, three, one
# CORRECT AGAIN !!!!! YAAAAAAASSSSS
