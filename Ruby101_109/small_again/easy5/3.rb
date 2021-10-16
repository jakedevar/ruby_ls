=begin
# ------------------- Problem ---------------------
write two method before and after midnight

# ------------------- Examples --------------------


# ------------------- Data ------------------------
use a combo of ints and arrays

# ------------------- Algorithm -------------------
take the string and char out then map to to_i then sum

# ------------------- Code -----------------------

=end
def sum str
  res = str.split(':')
  res = res[0].to_i * 60 + res[1].to_i
end

def after_midnight str
  return 0 if sum(str) == 1440
  sum(str)
end

def before_midnight(str)
  return 0 if (sum(str) - 1440).abs == 1440
  (sum(str) - 1440).abs
end

 p after_midnight('00:00') == 0
 p before_midnight('00:00') == 0
 p after_midnight('12:34') == 754
 p before_midnight('12:34') == 686
 p after_midnight('24:00') == 0
 p before_midnight('24:00') == 0