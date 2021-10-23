=begin
# ------------------- Problem ---------------------
given an input of a string and a list of exceptions

# ------------------- Examples --------------------

# ------------------- Data ------------------------

# ------------------- Algorithm -------------------
take the string and split
split the exceptions and each use index on them and pass index into arr and downcase it  use regex to find exceptions

# ------------------- Storm -----------------------
=end

def title_case(string, except = '')
  return '' if string == ''
  store = string.downcase.split.map(&:capitalize)
  store2 = store[1..-1]
  ex = except.split
  ex.each do |word|
    i = store2.index(word.downcase.capitalize)
    store2[i].downcase! unless i.nil?
  end
  store2.unshift(store[0])
  store2.join ' '
end

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'

p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'

p title_case('the quick brown fox') == 'The Quick Brown Fox'
