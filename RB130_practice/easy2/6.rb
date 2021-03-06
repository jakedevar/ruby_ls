def each_with_index arr 
  arr.inject(0) {|ind, e| yield(e, ind); ind += 1}
  arr
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]