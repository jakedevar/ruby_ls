#exercise_3.rb

x = 20
def digit_list(int)
  new_arr = int.to_s.split(//)
  new_arr.map! { |trans| trans.to_i}
end

p digit_list(x) == [2, 0]

=begin
#brute force LS way
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end
=end
#Idiomatic way LS

def digit_list(number)
  number.to_s.chars.map(&:to_i) #wait &:to_i is short hand for an fing { |char| char.to_i }???? this is gold!!!
end
