=begin
# ------------------- Problem ---------------------
take each word if there is more than one and reverse it and then combine with 1 + 2, 3 + 4 and so on
untill there are no more words
input a string and oupt a string
# ------------------- Examples --------------------

# ------------------- Data ------------------------

arrays always
# ------------------- Algorithm -------------------
take the string and split set to var
untill arr.size = 1
var = iterate and map the array so words are flipped
var = then go through and combine unless arr.size -1 is odd then untill that index

# ------------------- Code -----------------------

=end

def reverse_and_combine_text(str)
  words = str.split
  until words.size == 1
    words = words.map(&:reverse)
    words = words.each_slice(2).to_a.map(&:join)
  end
  words.join
end

p reverse_and_combine_text("abc def") == "cbafed"

p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"

p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"

p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"

p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"
