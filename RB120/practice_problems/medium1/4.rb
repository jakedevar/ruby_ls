class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet('hi')
  end
end

class Goodbye < Greeting
  def bye
    greet('bye')
  end
end

Hello.new.hi
Goodbye.new.bye