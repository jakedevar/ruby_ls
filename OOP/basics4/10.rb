class Person
  attr_writer :name
  def name
    first_name, last_name = @name.split
    first_name + ' ' + last_name
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name