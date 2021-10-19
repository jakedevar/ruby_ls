class Cat
  def initialize(name)
    
    @name = name
    puts "I'm a #{@name}!"
  end
end

kitty = Cat.new('Sophie')