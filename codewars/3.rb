def solution(string, search_text)
  string.scan(search_text).size
end

p solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
p solution('aaabbbcccc', 'bbb') # should return 1
