class TextAnalyzer
  def process
    file = File.open('sample.txt', 'r')
    yield(file.read)
    file.close 
  end
end

analyzer = TextAnalyzer.new
p analyzer.process { |file| file.count("/\n/") }
# analyzer.process { # your implementation }
# analyzer.process { # your implementation }