#exercise_12.rb

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
hsh = {}
arr.map do |sub_arr|
  sub_arr.map do |item|
    if item == sub_arr[0]
    hsh[item] = sub_arr[1]
    end
  end
end

p hsh

#lol mine was a bit more conveluded but a victory none the less!!!!!
#LS solution
hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end
hsh # => {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}