

# def letter_case_count(string)
#   hash = {lowercase: 0, uppercase: 0, neither: 0}
#   hash[:lowercase] = string.count("/[a-z]/")
#   hash[:uppercase] = string.count("/[A-Z]/")
#   hash[:neither] = string.count("/[[0-9[ ]\W\+]]/")
#   hash
# end

#after seeing LS solution
def letter_case_count(string)
  hash = {}
  characters = string.chars
  hash[:lowercase] = characters.count { |char| char =~ /[a-z]/}
  hash[:uppercase] = characters.count { |char| char =~ /[A-Z]/}
  hash[:neither] = characters.count { |char| char =~ /[^A-Za-z]/}
  hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }