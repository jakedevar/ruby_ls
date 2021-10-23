# inline_exception.rb

zero = 0
puts "Before each call"
begin
  zero.each { |element| puts element }
rescue StandardError
  puts "Can't do that!"
end
puts "After each call"
