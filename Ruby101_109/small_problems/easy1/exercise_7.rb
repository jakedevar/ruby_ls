# exercise_7.rb
def binary(int)
  bin_storage = []
  int.times { |x| bin_storage << (x.even? ? '1' : '0') }
  bin_storage.join
end

p binary(10)

# here is one i really like from a uswer
def stringy(num)
  (1..num).map { |ele| ele.odd? ? '1' : '0' }.join
end

p stringy(6) == '101010'
p stringy(9) == '101010101'
p stringy(4) == '1010'
p stringy(7) == '1010101'

# LS solution
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end
