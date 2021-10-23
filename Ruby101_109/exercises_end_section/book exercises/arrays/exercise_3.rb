# exercise_3.rb

arr = [["test", "hello", "world"], ["example", "mem"]]

=begin
  #idea 2
def check x
  if x.each_
    puts "example"
  else
    puts "running"
  end
end
=end

=begin

end
arr.each do |arr, item|
  if item == "example"
    puts "search results: #{item}"
  else
    puts "running"
  end
end
#was over complecating it ans at bottom
=end

puts arr.last.first
