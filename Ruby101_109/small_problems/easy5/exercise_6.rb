

=begin
def create_hash(string)
  hash = {}
  string.split.each do |word|
    hash[word.size] = 0
  end
  hash
end


def word_sizes(string)
  hash = {}
  string.split.each do |word|
    hash[word.size] = 0
  end
  string.split.each do |word|
    hash[word.size] += 1
  end
  hash
end
=end
#after seeing the launch school soltuion 
def word_sizes(string)
  hash = Hash.new(0)
  string.split.each do |word|
    hash[word.size] += 1
  end
  hash
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}