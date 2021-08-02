def joinor(arr, symbol = ', ', conjunction = ' or ')
  arr[-1] = (symbol + conjunction + arr[-1].to_s)
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
#joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
#joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"