# exercise_6.rb

numbers = {
  high: 100,
  medium: 50,
  low: 10
}

half_numbers = numbers.map { |_k, v| v / 2 }
p half_numbers
