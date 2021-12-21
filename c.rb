=begin 

  You have an application that uses a #fetch method to retrieve a collection of data from some external source 
  and a #save method that saves any modified data when you finish. 

  To make updates easier, you have several methods that update the data based on different search criteria. 
  So far, you have something like this:

  You want to use the #each method in #update_data rather than write an explicit loop, 
  but this means that you somehow need to pass a block through two different methods before you can invoke it. 
  A simple yield won't work in this case.

Finish implementing the #update_data, #update_by_type, and #update_by_location methods.
=end


def convert(string)
  chars = string.chars 
  chars.map { |chr| yield(chr) }.join
end

p convert('A simple string') { |char| char.upcase } # => "A SIMPLE STRING"
p convert('xyyz') { |char| char + char }            # => xxyyyyzz
convert('Ready? Set. Go!') do |char|              # => Ready?Set.Go!
  char == ' ' ? '' : char
end