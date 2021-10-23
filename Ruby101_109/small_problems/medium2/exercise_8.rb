# exercise_8.rb

# def featured(start_int)
#   counter = start_int
#   if start_int >= 9_999_999_999
#     puts "There is no possible number that fulfills those requirements"
#   else
#     loop do
#       counter += 1
#       return if counter.odd? && counter % 7 == 0 && counter.digits.uniq == counter.digits
#     end
#   end
# end
# really liked the LS solution for this one. very clever very clever...
def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
