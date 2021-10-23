=begin
# ------------------- Problem ---------------------
return kebeab case of the camel case word

# ------------------- Examples --------------------

# ------------------- Data ------------------------

a simple string that contains camel case and somtimes numbers
# ------------------- Algorithm -------------------
delete
split by capital letters
map downcase
join with -

# ------------------- Storm -----------------------

=end

def kebabize(string)
  chars = string.chars.delete_if { |x| x =~ /[^A-Za-z]/ }
  chars.map do |ele|
    ele =~ /[A-Z]/ && chars.index(ele) != 0 ? '-' + ele : ele
  end.join.downcase
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'

p kebabize('fFbgzs')
