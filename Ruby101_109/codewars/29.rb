=begin
# ------------------- Problem ---------------------
return an array of the string given which contains paired every two elements in the string with an underscore if odd element

# ------------------- Examples --------------------

# ------------------- Data ------------------------
a simple string that is all lower case letters and sometimes an empty string

# ------------------- Algorithm -------------------
split string by chars
each slice it up

# ------------------- Storm -----------------------
=end

# def solution(string)
#   return [] if string == ''
#   result = []
#   string.chars.each_slice(2) { |slice| result << slice}
#   result[-1] << '_' if result[-1].size == 1
#   result.map(&:join)
# end

def solution(string)
  (string + '-').scan /../
end

p solution('abc') #== ['ab', 'c_']

p solution('abcdef') == ['ab', 'cd', 'ef']

p solution("abcdef") == ["ab", "cd", "ef"]

p solution("abcdefg") == ["ab", "cd", "ef", "g_"]

p solution("") == []
