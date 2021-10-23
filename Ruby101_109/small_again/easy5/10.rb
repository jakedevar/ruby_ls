=begin
# ------------------- Problem ---------------------
wite a method that banneraizes the sentance within

# ------------------- Examples --------------------

# ------------------- Data ------------------------
just using puts for this

# ------------------- Algorithm -------------------
5 lines of puts with init characters and they multiply the - with the lenght of the string + 4

# ------------------- Code -----------------------

=end

def print_in_box(string)
  puts "+#{'-' * (string.size + 2)}+"
  puts "|#{' ' * (string.size + 2)}|"
  puts "| #{string} |"
  puts "|#{' ' * (string.size + 2)}|"
  puts "+#{'-' * (string.size + 2)}+"
end

print_in_box('To boldly go where no one has gone before.')

# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
