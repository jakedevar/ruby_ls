class Cat
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{@name} and I'm a purple cat!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
