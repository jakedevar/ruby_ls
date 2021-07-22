#exercise_5.rb

# def staggered_case(string)
#  string.chars.each_with_index do |ele, index|
#   index.even? ? ele.upcase! : ele.downcase!
#   end.join
  
# end

#had given up on this one and luckly had walked away to go to a meeting. and then remmebered eachwith index. I was checking with arr.index(char)
#before and i found out that the way that method worked is by checking the first of that character in the string or at least thats what it looked like
#because it would skip over indecies that matched. this works perfect thought I also like the logic of the launch school solution. it is an example 
#@of how creative programming can be!

def staggered_case(string)
  caps_yes = true
  result = ''
  string.chars.each do |char|
    if caps_yes
      result += char.upcase
    else
      result += char.downcase
    end
    caps_yes = !caps_yes
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'