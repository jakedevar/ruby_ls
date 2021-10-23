def spinWords(string)
  string.split(' ').map do |word|
    word.length > 4 ? word.reverse : word
  end.join(' ')
end

p spinWords("Welcome") #== "Hey wollef sroirraw"

p spinWords("This is a test") == "This is a test"

p spinWords("This is another test") == "This is rehtona test"

p spinWords('test') == 'test'
