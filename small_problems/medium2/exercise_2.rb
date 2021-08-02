#exercise_2.rb

# BLOCK = ['B', 'X', 'D', 'C', 'N', 'G', 'R','F', 'J', 'H', 'V', 'L', 'Z']
# BLOCK2 = ['O', 'K', 'Q', 'P', 'A', 'T', 'E', 'S', 'W', 'U', 'I', 'Y', 'M']

# def block_word?(string)
#   BLOCK.zip(BLOCK2).each do |one, two|
#     if string.upcase.include?(one) && string.upcase.include?(two)
#       return false
#     elsif string.upcase.include?(one) || string.upcase.include?(two)
#       return true
#     end
#   end
# end
#this one ended up working out. I find that as long as I dont give up I can usually come up with a solution that can work, wait mine didnt work all the way actually my bad
BLOCK = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
def block_word?(string)
  string_up = string.upcase
  BLOCK.none? { |pair| string_up.count(pair) >= 2}
end

p block_word?('BATCH') #== true
p block_word?('BUTCH') #== false
p block_word?('jest') #== true