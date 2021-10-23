=begin
# ------------------- Problem ---------------------
return the array sorted based on the english name for each number in the array and return the numebred array
inut arr
output arr

# ------------------- Examples --------------------

# ------------------- Data ------------------------
arr

# ------------------- Algorithm -------------------
take the array of words and convert to a hash with the number as the value
write that program to make that hash lol not gonna
then take the keys from said array and sort
then itterate through keys and map them to the value of the hash

# ------------------- Code -----------------------

=end

WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve
           thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def init_hash
  hash = Hash.new(0)
  WORDS.each_with_index { |key, value| hash[key] = value }
  hash
end

def alphabetic_number_sort(_arr)
  keys = init_hash().keys
  keys.sort.map { |key| init_hash()[key] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
