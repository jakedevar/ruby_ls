=begin
# ------------------- Problem ---------------------
decipher the message that is coded into the string
the first letter of every word is just the acsii ord number which needs to be transformed
then the last letter and the second letter need to be swapped

# ------------------- Examples --------------------
no special characters just spaces and letters

# ------------------- Data ------------------------
an array to split it up

# ------------------- Algorithm -------------------
split the string by space

# ------------------- Code -----------------------

=end

def decipher_this(str)
  first_chr = str.split(/[^1-9]+/).map { |chr| chr.to_i.chr.decode }
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") #== "A wise old owl lived in an oak"

p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"

p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"

p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"

p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"
