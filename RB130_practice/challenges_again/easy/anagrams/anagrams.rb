class Anagram
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def match(arr)
    sorted_str = str.downcase.chars.sort
    arr.each_with_object([]) do |ele, res|
      next if ele.downcase == str.downcase
      res << ele if ele.downcase.chars.sort == sorted_str
    end
  end
end
