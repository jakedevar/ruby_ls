flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
f_hash = {}

flintstones.each_with_index do |num, index|
  f_hash[num] = index
end

p f_hash

#CORRECT!!! always good when i get one right the first time 
