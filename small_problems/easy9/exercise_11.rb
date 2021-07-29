# #exercise_11.rb

# def anagrams(arr, new_arr)
#   result = []
#   arr.each do |word|
#     new_arr.each do |compword|
#       if word.chars.sort.all?(compword.chars.sort)
#        result << word
#       end
#     end
#   end
#   result
# end


# ["demo", "dome", "mode"]
# ["neon", "none"]
# #(etc)

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

# new_arr = words 
p anagrams(words, new_arr)
