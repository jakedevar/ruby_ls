# exercise_7.rb
numbers = {
  high: 100,
  medium: 50,
  low: 10
}

low_numbers = numbers.select { |_k, v| v < 25 }
p low_numbers
