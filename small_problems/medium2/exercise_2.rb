#exercise_2.rb

BLOCK = [['B', 'O'],   ['X', 'K'],   ['D', 'Q'],   ['C', 'P'],   ['N', 'A'],
['G', 'T'],   ['R', 'E'],  ['F', 'S'],   ['J', 'W'],   ['H', 'U'],
['V', 'I'],   ['L', 'Y'],   ['Z', 'M']]

def block_word?(string)
BLOCK.each do |item|
  if string.include?(item)
    return true
  end
end
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true