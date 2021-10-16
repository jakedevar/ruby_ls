#exercise_5.rb
def string_reverse(string)
  reversed_string = string.split.reverse
  reversed_string.each do |word|
    new_string = (word + ' ')
    print new_string
  end
end

x = 'I cant stop doing this it is way too fun and'

string_reverse(x)
#LS's elegant solution
def reverse(strings)
  strings.split.reverse.join(' ')
end