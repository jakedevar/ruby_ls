#exercise_2.rb

def execute(&block)
  block
end

execute { puts "hello from the inside the execute method!"}

# it will print the message from execute 

# i was incorrect Nothing is printed to the screen because the block is never activated with the 
#.call method. The method returns a Proc object.