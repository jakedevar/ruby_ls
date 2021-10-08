=begin
------------------- Problem ---------------------
write a method that return the missing slpha bet letter from the alphabetically sorted array
in other words what letter comes next in the series that is missing

------------------- Examples --------------------
given

------------------- Data ------------------------
arrays obvi

------------------- Algorithm -------------------
call each with index on array
return chr.next if chr.next != array[i + 1]

------------------- Code ------------------------
=end

def determine_missing_letter arr
  arr.each_with_index do |chr, i|
    return chr.next if chr.next != arr[i + 1]
  end
end

p determine_missing_letter(['a','b','c','d','f']) == 'e' 
p determine_missing_letter(['O','Q','R','S']) == 'P'
p determine_missing_letter(["a","b","c","d","f"]) == "e"
p determine_missing_letter(["O","Q","R","S"]) == "P"
