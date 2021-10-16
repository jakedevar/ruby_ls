# def solve(array)
#   array.map do |sub_arr|
#     sum_arr = []
#     chars = sub_arr.downcase.chars
#     chars.each_with_index do |ele, index|
#       if ALPHA.index(ele) + 1 == ALPHA.index(sub_arr[index.next])        
#         sum_arr << ele
#         sum_arr << sub_arr[index.next] 
#       end
#     end
#     sum_arr.uniq
#   end
# end
# I have much to learn 

# def solve(string_arr)
#   string_arr.map {|sub| (?A..?Z).zip(sub.upcase.chars).map(&:uniq!)}
# end

# take an array of the alphabet map it easy done by 'a' - 'z' and zip together and then sort, count if a == b

def solve(arr)
  arr.map { |sub| sub.downcase.chars.zip('a'..'z').count { |a, b| a == b}}
end

p solve(["abode", "ABc","xyzD"]) #== [4,3,1]

# p solve(["abide","ABc","xyz"]) #== [4,3,0]

# p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) #== [6,5,7]

# p solve(["encode","abc","xyzD","ABmD"]) #== [1, 3, 1, 3]