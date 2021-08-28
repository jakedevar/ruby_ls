# frozen_string_literal: true

def joinor(arr, symbol = ', ', conjunction = 'or')
  result = []
  arr.join.chars.each_with_index do |ele, index|
    result << if arr.join.size == 2
                (index == 1 ? ele : "#{ele} #{conjunction} ")
              elsif index != arr.size - 1
                ele + symbol
              else
                "#{conjunction} #{ele}"
              end
  end
  result.join
end

# def joinor(arr, symbol)
#   arr.collect_concat { |x| x.to_s + symbol }
# end
p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ') # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and') # => "1, 2, and 3"
