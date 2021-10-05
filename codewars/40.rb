=begin
# ------------------- Problem ---------------------
create a new string in which each character is represented by a parentheses ( for one character and ) for more than one character 

# ------------------- Examples --------------------
ignore upcase but not special characters or spaces 
also just return an empty string for empty string 

# ------------------- Data ------------------------
array 

# ------------------- Algorithm -------------------
def duplicate encode str
  chars str
  map chars 
  ( if chr count == 1 adn ) if > 1 
end

# ------------------- Storm -----------------------

=end
# def duplicate_encode(str)
#   str.downcase.chars.map {|chr| str.count(chr) == 1 ? '(' : ')'}.join
# end

def duplicate_encode str
  str.downcase.chars.map { |chr| str.downcase.count(chr) > 1 ? ')' : '('}.join
end

p duplicate_encode("DDDD123#$%") #== "((("

p duplicate_encode("recede") == "()()()"

p duplicate_encode("Success") == ")())())"

p duplicate_encode("(( @") == "))(("