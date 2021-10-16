def swapcase str
  str.chars.map do |ele| 
    if ele == ele.downcase
    ele.upcase 
    elsif ele == ele.upcase
    ele.downcase 
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'