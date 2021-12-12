class Text
  def initialize(text)
    @text = text
  end

  def word_count
    @text.split.count
  end

  def swap(letter_one, letter_two)
    @text.gsub(letter_one, letter_two)
  end
end

# puts File.open('sample.txt', 'r').read.split.count
