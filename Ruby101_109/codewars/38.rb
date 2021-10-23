=begin
# ------------------- Problem ---------------------
take a string and reverse the order of words themselves but not the actual words themselves
also swap the case of all of the characters in the string
  you may have to deal with leading and trailing spaces

# ------------------- Examples --------------------

# ------------------- Data ------------------------
i a mgoing to use an array for this one

# ------------------- Algorithm -------------------
def method str
take the string and split by space
and reverse the map swap case
end

lol nvm meant mult spaces inbetween too. example cases sucked on this one

take the string and reverse it
chars then map
chr swapcase
join
fuck nvm

# ------------------- Storm -----------------------

=end

def string_transformer(str)
  str.split(/\b/).reverse.map(&:swapcase).join
end

p string_transformer('Example string')
