def a_method(&block)
  p block.class
end

a_method do
  puts 5
end