#exercise_4.rb

def balanced?(string)
  balanced = 0
  string.chars.each do |char|
    balanced += 1 if char == '('
    balanced -= 1 if char == ')'
    break if balanced < 0
  end
  balanced.zero?
end
  

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false 