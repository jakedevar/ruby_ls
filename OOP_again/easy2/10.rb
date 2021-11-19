# module Walkable
#   def walk
#     "#{name} #{gait} forward"
#   end
# end

# class Person
#   attr_reader :name
#   include Walkable

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "strolls"
#   end
# end

# class Cat
#   attr_reader :name
#   include Walkable

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "saunters"
#   end
# end

# class Cheetah
#   attr_reader :name
#   include Walkable

#   def initialize(name)
#     @name = name
#   end

#   private

#   def gait
#     "runs"
#   end
# end

# class Noble
# 	attr_reader :name, :title 
# 	include Walkable

# 	def initialize(name, title)
# 		@name = name 
# 		@title = title 
# 	end

# 	def gait
# 		'struts'
# 	end

# 	def walk
# 		title + ' ' + super
# 	end
# end

# mike = Person.new("Mike")
# p mike.walk
# # => "Mike strolls forward"

# kitty = Cat.new("Kitty")
# p kitty.walk
# # => "Kitty saunters forward"

# flash = Cheetah.new("Flash")
# p flash.walk
# # => "Flash runs forward"

# byron = Noble.new("Byron", "Lord")
# p byron.walk
# # => "Lord Byron struts forward"

module Walkable
  def walk
    "#{self} #{gait} forward"
  end
end

class Person
  attr_reader :name
  include Walkable

  def initialize(name)
    @name = name
  end

  def to_s
  	name
  end

  private

  def gait
    "strolls"
  end
end

class Animal 
	attr_reader :name
  include Walkable

  def initialize(name)
    @name = name
  end

  def to_s
  	name
  end
end

class Cat < Animal
  private

  def gait
    "saunters"
  end
end

class Cheetah < Animal 
  private

  def gait
    "runs"
  end
end

class Noble < Person
	attr_reader :title 

	def initialize(name, title)
		super(name)
		@title = title 
	end

	def to_s
  	title + ' ' + super 
  end

	private

	def gait
		'struts'
	end
end

mike = Person.new("Mike")
p mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
p kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
p flash.walk
# => "Flash runs forward"

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"