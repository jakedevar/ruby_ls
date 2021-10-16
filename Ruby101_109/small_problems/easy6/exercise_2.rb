#exercise_2.rb
# def remove_vowels(char_arr)
#   char_arr.map do |ele|
#     ele.gsub(/[aeiou]/i, '')
#   end
# end

#lol and here I was thinking I was slick hahaha
#actuall looking at my solution again I could have done it in one line anyway so I actually did the most efficient solution anyway!!
#Nice!
def remove_vowels(char_arr)
  char_arr.map { |ele| ele.delete('aeiouAEIOU')}
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']