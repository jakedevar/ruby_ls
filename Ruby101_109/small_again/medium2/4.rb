=begin
------------------- Problem ---------------------
return a boolean if the parenthesis inside are balanced between one another

------------------- Examples --------------------
given

------------------- Data ------------------------
using count on the string and a sum should be easy
i am going to init two sums left and right and init to 0
then the sum plus equals right and left respectivley the count of the regex match of ( or )
the return true if left - right == 0
false

------------------- Algorithm -------------------

------------------- Code ------------------------
=end

def balanced?(str)
  sum = 0
  str.each_char do |chr|
    sum += 1 if chr == '('
    sum -= 1 if chr == ')'
    break if sum < 0
  end
  sum.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
