module Walkable
  def walk
    "#{self.name} #{gait} forward"
  end
end

class Person
  attr_reader :name
  include Walkable
  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Noble
  attr_accessor :title, :name
  include Walkable

  def initialize(name, title)
    @title = title
    @name = name
  end
  def walk
    title + ' ' + super
  end
  def gait
    'struts'
  end 
end

class Cat
  attr_reader :name
  include Walkable
  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  attr_reader :name
  include Walkable
  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end


byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"