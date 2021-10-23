=begin
# ------------------- Problem ---------------------
return a hash with the count of all the different length words

# ------------------- Examples --------------------

# ------------------- Data ------------------------
using an array to iterate then a hash

# ------------------- Algorithm -------------------
split string
each with object hash

# ------------------- Code -----------------------

=end

def word_sizes(str)
  str.split.each_with_object(Hash.new(0)) { |k, h| h[k.size] += 1 }
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5,
                                                                6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
