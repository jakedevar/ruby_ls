class Pet 
	attr_reader :type, :name 
	def initialize(type, name)
		@type = type
		@name = name 
	end
end

class Owner
	attr_reader :pets, :name, :number_of_pets
	def initialize(name)
		@name = name 
		@pets = []
	end

	def number_of_pets
		@pets.count
	end
end

class Shelter 
	attr_reader :list 
	def initialize
		@list = Hash.new([])
	end

	def adopt(owner, pet)
		owner.pets << pet 
		list[owner.name] += [pet] 
	end

	def print_adoptions
		list.keys.each do |key|
			puts "#{key} has adopted the following pets:"
			list[key].each do |pet|
				puts "  a #{pet.type} named #{pet.name}"
			end
			puts ""
		end
	end
end



butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

=begin 
P Hanson has adopted the following pets:
a cat named Butterscotch
a cat named Pudding
a bearded dragon named Darwin

B Holmes has adopted the following pets:
a dog named Molly
a parakeet named Sweetie Pie
a dog named Kennedy
a fish named Chester

P Hanson has 3 adopted pets.
B Holmes has 4 adopted pets.

problem: make everything print as expected 
input: a pet instacne with the animal type 

algo 
when you adopt place the name of the person adopting as the place to store the pets 
create a hash in the instance var of shelter
place the name as key and put the animal object in the hash 
print the name and the values under it 
=end
