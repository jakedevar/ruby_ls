# exercise_10.rb

def center_of(string)
  string.length.odd? ? string[string.length / 2] : string[(string.length / 2) - 1] + string[string.length / 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
