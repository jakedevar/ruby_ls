#exercise_3.rb



def letter_percentages(string)
  percents = {lowercase: 0, uppercase: 0, neither: 0}
  string_chars = string.chars
  string_chars.each do |char|
    if /[a-z]/ =~ char
      percents[:lowercase] += 1
    elsif /[A-Z]/ =~ char
      percents[:uppercase] += 1
    elsif /[\W\s\d]/ =~ char 
      percents[:neither] += 1
    end
  end
    percents.each_pair do |key, value|
      percents[key] = ((value.to_f / string_chars.length)) * 100
    end
    percents
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
