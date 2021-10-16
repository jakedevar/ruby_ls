#exercise_6.rb

# def staggered_case(string)
#   result = ''
#   caps_yes = true
#   string.chars.each do |char|
#     if /[A-Za-z]/.match(char) && caps_yes
#       result += char.upcase
#       caps_yes = !caps_yes
#     elsif /[^A-Za-z]/.match(char)
#       result += char
#     else
#       result += char.downcase
#       caps_yes = !caps_yes
#     end
#   end
#   result
# end

#so mine does work. this is the LS logic below 
def staggered_case(string)
  result = ''
  caps_yes = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if caps_yes
        result += char.upcase
      else
        result += char.downcase
      end
      caps_yes = !caps_yes
    else
      result += char
    end
  end
  result
end




p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'