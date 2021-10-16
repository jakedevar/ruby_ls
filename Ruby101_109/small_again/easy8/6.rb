def fizzbuzz(one, two)
  (one..two).to_a.map do |ele| 
    if ele % 3 == 0 && ele % 5 == 0
      'FizzBuzz'
    elsif ele % 3 == 0
      'Fizz'
    elsif ele % 5 == 0
      'Buzz'
    else 
      ele
    end
  end.join', '
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz