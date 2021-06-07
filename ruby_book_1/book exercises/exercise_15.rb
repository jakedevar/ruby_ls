#exercise_15.rb

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

#they will be the same as hashes are not ordered 

if hash1 == hash2
  puts "these hashes are the same"
else 
  puts "these hashes are not the same"
end

#correct!!!!!!