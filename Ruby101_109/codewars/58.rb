=begin
# ------------------- Problem ---------------------
return the letter count with the key as a symbol

# ------------------- Examples --------------------

# ------------------- Data ------------------------
a hash but an array to iterate through

# ------------------- Algorithm -------------------
chars and each with object init a new hash
but the hash key as :k then count but if not the += 1

# ------------------- Code -----------------------

=end

def letter_count(str)
  str.chars.each_with_object(Hash.new(0)) { |k, h| h[k.to_sym] = str.count(k) }
end

p letter_count('arithmetics') == { a: 1, c: 1, e: 1, h: 1, i: 2, m: 1,
                                   r: 1, s: 1, t: 2 }
