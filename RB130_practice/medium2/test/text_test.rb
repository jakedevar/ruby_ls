require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative '../lib/text'



class TextTest < MiniTest::Test
  attr_reader :file, :text

  def setup 
    @file = File.open("../lib/sample.txt", 'r')
    @text = Text.new(@file.read)
  end

  def test_swap
    assert(text.swap('a'.downcase, 'e'))
  end

  def test_word_count
    assert_equal 72, text.word_count
  end

  def teardown
    @file.close
    puts "File has been closed: #{file.closed?}"
  end
end