# exercise_4.rb

def swapcase(string)
  joiner = string.chars.each do |char|
    if char =~ /[A-Z]/
      char.downcase!
    else
      char.upcase!
    end
  end
  joiner.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
