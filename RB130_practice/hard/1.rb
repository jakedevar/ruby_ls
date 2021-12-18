yes = Enumerator.new do |y|
  counter = 1 
  res = [1]

  loop do
    y << res.inject(:*)
    counter += 1 
    res.push counter 
  end
end.each

6.times {puts "the number is => #{yes.next}"}
6.times {puts "the number is => #{yes.next}"}