#exercise_4.ruby

def hello
  'Hello'
end

def world
  'World'
end


def greet 
  "#{hello} #{world}"
end

=begin
#or 
def greet 
  hello + ' ' + world
end
=end
puts greet  