
class Anagram
  def initialize word 
    @word = word
  end

  def match arr 
    match_this = @word.downcase.chars.sort 
    arr.each_with_object([]) {|ele, res| next if ele.downcase == @word.downcase ; res << ele if ele.downcase.chars.sort == match_this}
  end 
end