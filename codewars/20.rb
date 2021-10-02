def get_char_count(string)
  store = string.downcase.chars.group_by {|n| string.downcase.count(n)}.each_value(&:uniq!)
  result = store.keys.sort.map {|key| store[key]}
end

p get_char_count("Mississippi") #== {4=>["i", "s"], 2=>["p"], 1=>["m"]}

p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}

p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}

p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}

p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}