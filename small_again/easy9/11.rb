words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

def word(words)
  res = []
  words.each_with_index do |word, ind1|
    yes = word.chars.sort
    words.each_with_index do |o_word, ind2|
      res << o_word if yes == o_word.chars.sort
    end
  end
  res.chunk {|word| word.chars.sort}.to_a.map {|sub| sub[1]}
end

p word(words)