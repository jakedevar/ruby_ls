items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*all , one|
  puts "#{all[0]}#{all[1]}#{all[2]}"
  puts one 
end