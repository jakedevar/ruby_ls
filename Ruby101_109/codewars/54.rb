=begin
# ------------------- Problem ---------------------


# ------------------- Examples --------------------


# ------------------- Data ------------------------


# ------------------- Algorithm -------------------


# ------------------- Code -----------------------

=end

def weirdcase str
  str.split.map do |word|
    word.chars.map.with_index {|chr, i| i.even? ? chr.upcase : chr}.join
  end.join ' '
end

p weirdcase( "this is a test" ) #== "StRiNg"

p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"