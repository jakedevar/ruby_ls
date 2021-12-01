class Cat
  attr_reader :name

  def self.generic_greeting
    puts "I am a #{self}"
  end

  def personal_greeting
    puts "hello my name is #{name}"
  end

  def initialize(name)
    @name = name
  end
end

kitty = Cat.new('Sophie')

Cat.generic_greeting
kitty.personal_greeting