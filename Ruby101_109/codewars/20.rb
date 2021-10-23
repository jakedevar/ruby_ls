def get_char_count(string)
  store = Hash.new([])
  result = Hash.new([])
  str = string.gsub(/[^a-z0-9]/i, '')
  str.downcase.each_char do |n|
    store[str.downcase.count(n)] += [n] unless store[str.downcase.count(n)].include?(n)
  end
  store.keys.sort.reverse_each { |key| result[key] = store[key].sort }
  result
end

p get_char_count("Mississippi") == { 4 => ["i", "s"], 2 => ["p"], 1 => ["m"] }

p get_char_count("Hello. Hello? HELLO!!") == { 6 => ["l"],
                                               3 => ["e", "h", "o"] }

p get_char_count("aaa...bb...c!") == { 3 => ["a"], 2 => ["b"], 1 => ["c"] }

p get_char_count("aaabbbccc") == { 3 => ["a", "b", "c"] }

p get_char_count("abc123") == { 1 => ["1", "2", "3", "a", "b", "c"] }
