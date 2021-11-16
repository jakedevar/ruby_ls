class Person

  def name= str 
    @first, @last = str.split
  end

  def name 
    puts @first + ' ' + @last
  end 
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name

=begin 
i need to split the str into two instance variables 
then joined in the getter method to form a name 
=end 