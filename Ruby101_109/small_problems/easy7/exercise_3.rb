#exercise_3.rb

# def word_cap(string)
#   string_arr = string.split
#   string_arr.map do |word|
#     unless word[0] =~ /[^A-Za-z]/
#       word.capitalize!
#     end
#   end
#     string_arr.join' '
# end
#the LS solution is below not becasue I couldent do it this way or because my solution was wrong. It is because I was underthe impression that capitalize would
#error out on the "" of quoted word so i even made an unless statement hahahahaha

# def word_cap(string)
#   string.split.map(&:capitalize).join' '
# end
#further exploration  below
# def word_cap(string)
#   arr = string.split.each do |word|
#     word.downcase!
#     word[0] = word[0].capitalize
#   end
#   arr.join' ' 
# end

def word_cap(string)
  chars = string.chars.each(&:downcase!).join
  joiner = chars.split.each do |word|
    word[0] = word[0].swapcase
  end
  joiner.join' '
end



p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'