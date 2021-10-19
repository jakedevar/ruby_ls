class Cat
  attr_reader :name

  def self.generic_greeting
    puts "what up"
  end
  def personal_greeting
    puts "what up #{name}"
  end
  def initialize(name)
    @name = name
  end
end

kitty = Cat.new('Sophie')

Cat.generic_greeting
kitty.personal_greeting