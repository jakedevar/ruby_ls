=begin
# ------------------- Problem ---------------------
take an integer in the input and out put a string version in which the the number is broken down into expanded form

# ------------------- Examples --------------------

# ------------------- Data ------------------------
a simple integer and out put a simple string

# ------------------- Algorithm -------------------
break the number up
put the approprait amount of zeros next to the number and add to a string
each with index on chars unless is zero then index to -1 times do + 0 and add to result
# ------------------- Storm -----------------------
=end

def expanded_form(int)
  result = []
  chars = int.to_s.chars
  chars.each_with_index do |item, index|
    str = item
    unless item.to_i == 0
      (chars.length - (index + 1)).times do |_|
        str += '0'
      end
    end
    result << str unless str.to_i == 0
  end
  result.join(' + ')
end

p expanded_form(12) == '10 + 2'

p expanded_form(42) == '40 + 2'

p expanded_form(70304) == '70000 + 300 + 4'
