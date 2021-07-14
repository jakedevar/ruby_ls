#exercise_7.rb

def word_sizes(string)
  hash = Hash.new(0)
  string.split.each do |word|
    word_storage = word.delete('^A-Za-z')

    hash[word_storage.size] += 1
  end
  hash

  
  #so this is the actual LS solution rewritten. however I was so freaking close that I litteraly was typing out such a similar solution to this one and gave up because
  # the only way I could think to do this problem was to delete the un alpha numeric characters but didnt realize that delete could take regex or even what regex would 
  # work in this instance so I consider this a learning experience and partial credit. 




p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}