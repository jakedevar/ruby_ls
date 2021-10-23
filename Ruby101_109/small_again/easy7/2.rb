def letter_case_count(str)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  str.each_char do |ele|
    if /[A-Z]/.match(ele)
      hash[:uppercase] += 1
    elsif /[a-z]/.match(ele)
      hash[:lowercase] += 1
    elsif ele =~ /[^a-z]/i
      hash[:neither] += 1
    end
  end
  hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
