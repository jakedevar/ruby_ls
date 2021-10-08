# def swap(str)
#   str.split(/ /).map {|word| word << word[0]; word[0] = word[-2]; word[-2] = ''; word}.join(' ')
# end
# oof that was an ugly one here is a better way

def helper(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(str)
  str.split(/ /).map { |word| helper(word)}.join' '
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'