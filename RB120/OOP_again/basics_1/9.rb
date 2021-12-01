module Walkable
  def walk
    puts "lets go for a walk"
  end
end

class Cat
  attr_reader :name
  include Walkable

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.walk