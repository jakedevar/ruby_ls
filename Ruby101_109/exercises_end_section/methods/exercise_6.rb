# exercise_6.ruby

def car(x, y)
  puts x + ' ' + y
end

car("toyota", "honda")

=begin
#iteresting solution i found in comments
def car(*make)
  "#{make},  "
end

puts car("Toyota", 'corolla')
=end
