#exercise_4.rb
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end


def substrings(string)
  result = []
  counter = 0
  get = string.chars
  until counter == (string.size )
  result << leading_substrings(get)
  get.shift
  counter += 1
  end
  result.map do |arr|
    arr.map {|ele| ele.join}
  end.flatten
end

def substrings(string)
  result = []
  (0..string.size).each do |starting_index|
    sub_string = string[starting_index..-1]
    result.concat(leading_substrings(sub_string))
  end
  result
end

#i figured it out however still wanted to know the LS solution 


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]