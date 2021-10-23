=begin
# ------------------- Problem ---------------------
input a string and output the integer representing
1 representing a character that is duplicated. notthe amount of chars but just if its duplicatre
must be case insensitive
# ------------------- Examples --------------------
case insensitive no special characters it looks like
not spaces either but wouldent matter

# ------------------- Data ------------------------
im going to use an arr for this one

# ------------------- Algorithm -------------------
im going to iterage through a uniq arr of chars and up counter if count > 1

def duplicate_count str
  chars = str.count
  counter
  chars each do
    if str.countchr > 1 then += 1
end

# ------------------- Storm -----------------------

=end
# def duplicate_count str
#   counter = 0
#   str.downcase.chars.uniq.each do |chr|
#     counter += 1 if str.downcase.count(chr) > 1
#   end
#   counter
# end

def duplicate_count(str)
  ('a'..'z').count { |c| str.downcase.count(c) > 1 }
end

p duplicate_count("") == 0

p duplicate_count("abcde") == 0

p duplicate_count("abcdeaa") == 1

p duplicate_count("abcdeaB") #== 2

p duplicate_count("Indivisibilities") #== 2
