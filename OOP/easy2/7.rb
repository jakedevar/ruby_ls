=begin
==========================
Wrie the classes and methods that will be necessary to make this code run
and print the following output
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: 
-  Inputs: objects that contain information to be initialized
as well as object methods within classes 
-  Output: 
--------------------------
**Clarifying Questions:**
--------------------------
1. can only use classes to get it done 
2. everything is given
3.
--------------------------
**Implicit Requirements:**
--------------------------

--------------------------
Examples/Test Cases/Edge's
--------------------------
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

--------------------------
     Data Structure
--------------------------
objects and creating a programe with such 
--------------------------
       Algorithm
--------------------------
1. create shelter class 
  a. make sure you create a class variable with the hash, also an adoption list that is the same as owner class 
2. create a pet class and inherit from shelter
  a. in the init method make sure that when it inits to add pet name and value as array 
3. create the owner class and in their init method init a name instance var inherit from shelter
  a. create a house array to store pets 
**Helper Methods??**
problem create a list adoptions list
1. 

Code
----
=end

class Shelter
  attr_accessor :adoptions, :cage
  @@cage = Hash.new([])
  def initialize
    @adoptions = []
  end

  def adopt(person, name)
    person.home << @@cage[name]
    @adoptions << @@cage[name]
  end

  def print_adoptions
    @adoptions.each do |name|
      puts name
    end
  end
end

class Pet < Shelter
  def initialize(type, name)
    @@cage[name] << [type, name]
  end
end

class Owner < Shelter
  attr_accessor :name, :home, :number_of_pets

  def initialize(name)
    @name = name
    @home = []
    @number_of_pets = @home.size
  end
end


# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')



shelter = Shelter.new
# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
p phanson.home
p phanson.cage
# shelter.print_adoptions
# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
