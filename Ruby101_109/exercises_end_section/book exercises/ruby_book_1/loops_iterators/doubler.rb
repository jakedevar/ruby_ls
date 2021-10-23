# doubler.rb

=begin def doubler(start)
  puts start * 2
end

doubler(2)
=end

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(5)
