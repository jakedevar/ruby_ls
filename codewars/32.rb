=begin
# ------------------- Problem ---------------------
return the word with the amount of letters that rank lowest on the alphabet based on a =1 b =2 and so on

# ------------------- Examples --------------------


# ------------------- Data ------------------------
a simple string with no special characters seperated by spaces and no caps 

# ------------------- Algorithm -------------------
create a helper method to init hash of letters 
create an empty array in the top 
string split up 
iterate through them and then iterate through the word adding each to a sum after ieterate through word reset sum but only after appending to array 
then get the index of the max and use it to get the word 

# ------------------- Storm -----------------------

=end

def init_hash
  alpha = ('a'..'z').to_a
  hash = Hash.new(0)
  counter = 1
  alpha.each do |chr|
    hash[chr] = counter
    counter += 1
  end
  hash
end

def high(string)
  score_arr = []
  splits = string.split
  splits.each do |word|
    sum = 0
    word.chars.each do |chr|
      sum += init_hash()[chr]
    end
    score_arr << sum 
  end
  splits[score_arr.index(score_arr.max)]
end

p high('man i need a taxi up to ubud') == 'taxi'

p high('what time are we climbing up the volcano') == 'volcano'

p high('take me to semynak') == 'semynak'

p high('aaa b') == 'aaa'