class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    name.to_s
  end
end

kitty = Cat.new('Sophie')
puts kitty
