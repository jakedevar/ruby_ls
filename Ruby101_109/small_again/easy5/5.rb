=begin
# ------------------- Problem ---------------------
delete all the special characters and replace with a space but no consecutive spaces

# ------------------- Examples --------------------

# ------------------- Data ------------------------
gsub buddy then chars

# ------------------- Algorithm -------------------
gsub chars compact?

# ------------------- Code -----------------------

=end

def cleanup(str)
  str.gsub(/[^a-z]/, ' ')
end

p cleanup("---what's my +*& line?") #== ' what s my line '
