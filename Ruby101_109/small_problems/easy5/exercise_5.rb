# exercise_5.rb

def cleanup(string)
  storage_arr = []
  string.gsub!(/[\W]/, ' ')
  string.chars.each do |char|
    storage_arr << char unless char == storage_arr.last
  end
  storage_arr.flatten.join
end

p cleanup("---what's my +*& line?") == ' what s my line '

# retried this one because I saw it had been marked not done. Man after learning a whole lot and coming back this one was easy peasy!!
