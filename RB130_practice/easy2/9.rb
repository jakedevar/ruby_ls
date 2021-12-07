# def each_cons arr 
#   counter = 1 
#   until counter >= arr.size 
#     yield(arr[counter - 1], arr[counter])
#     counter += 1
#   end
# end

# def each_cons arr 
#   arr.each_with_index {|ele, ind| break if ind == arr.size -1;yield(ele, arr[ind + 1])}
# end

def each_cons arr
  counter = 0 
  until counter >= arr.size - 1
    yield(arr[counter], arr[(counter + 1)])
    counter += 1
  end
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
 result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil