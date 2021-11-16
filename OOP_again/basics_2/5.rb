class Cat
	@@cat = 0
	def initialize
		@@cat += 1
	end

	def self.total 
		p @@cat
	end
end

kitty1 = Cat.new
kitty2 = Cat.new

Cat.total