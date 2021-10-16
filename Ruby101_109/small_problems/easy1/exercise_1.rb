pos_int = 6
rand_string = 'SAY WHAT AGAIN!!!'

def repeat(string, num_times)
  counter = 0
  loop do 
    break if counter == num_times
    puts string
    counter += 1
  end
end

repeat(rand_string, pos_int)
#shoot i thought of this answer too. I just hadent worked with times
# in a while so I forgot how it was structured
# LS solution

def repeat(string, number)
  number.times do
    puts string
  end
end