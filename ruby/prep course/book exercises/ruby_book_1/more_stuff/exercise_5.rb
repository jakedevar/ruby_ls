#exercise_5.rb

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

=begin
it gives the error message because it did not specify
for the argument to take a block
  =end

  #correct