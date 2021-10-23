arr = ['10', '11', '9', '7', '8']

arr.map! do |int_string|
  int_string.to_i
end
p new_arr.sort { |a, b| b <=> a }

# LS solution
arr.sort do |a, b|
  b.to_i <=> a.to_i
end
# => ["11", "10", "9", "8", "7"]

# to be fair i thought about this one and actually tried it but
# i must have gotten something wrong slightly in the code
# because i thought that I treid this exact thign.
