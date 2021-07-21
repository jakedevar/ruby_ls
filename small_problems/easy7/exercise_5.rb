#exercise_5.rb

def staggered_case(string)
  string.split.each do |word|
    word.chars.map do |char|
      if word.index(word[char]).odd? 
        char.downcase!
      else
        char.upcase!
      end
    end
  end
end


p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'