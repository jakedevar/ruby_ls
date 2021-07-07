#exercise_15.rb
#Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
new_arr = []
arr.map do |sub_hash|
  sub_hash.each do |key,value|
     value.select do |int|
      if value.include?(int.even?)
        puts 'no'
      else
        new_arr << value
      end
    end
  end
end

p new_arr

#gave up here is LS solution
arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end
# => [{:e=>[8], :f=>[6, 10]}]