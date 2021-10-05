=begin
# ------------------- Problem ---------------------
sort a string by ORDER OF APPERANCE IN THE ALPHA BET REGARDLESS OF CASE 
delte the punctuation but keep numeral

# ------------------- Examples --------------------
empty string return empty string also if there is a space 


# ------------------- Data ------------------------
use a mixture of string an array 

no just an array nvm sorry

# ------------------- Algorithm -------------------
def str
  str.chars and delete if regex not alpha or num
  then sort by downcase and join 
end 

# ------------------- Storm -----------------------

=end

# def alphabetized(str)
#   str.chars.sort_by(&:downcase).delete_if {|c| c =~ /[^a-z1-9]/i}.join
# end

def alphabetized(str)
  str.scan(/[a-z1-9]/i).sort_by(&:downcase).join
end

p alphabetized("") == ""

p alphabetized(" ") == ""

p alphabetized(" a") == "a"

p alphabetized("a ") == "a"

p alphabetized(" a ") == "a"

p alphabetized("A b B a") == "AabB"

p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"