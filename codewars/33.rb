=begin
# ------------------- Problem ---------------------
return a string with the position of every character 

# ------------------- Examples --------------------


# ------------------- Data ------------------------
a string with spaces and special characters also with caps involved as well 

# ------------------- Algorithm -------------------
downcase the string
delete any that not alpha
init alpha array
chars the string and map
alpha intded chr


# ------------------- Storm -----------------------

=end

def alphabet_position(string)
  chars = string.downcase.chars.delete_if {|chr| chr =~ /[^a-z]/}
  alpha = ('a'..'z').to_a
  chars.map {|chr| alpha.index(chr) + 1}.join ' '
end


p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"

p alphabet_position("-.-'") == ""
