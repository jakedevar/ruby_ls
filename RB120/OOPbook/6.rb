class Person
  attr_accessor :name
end

kate = Person.new
kate.name = 'Kate'
puts kate.name # => 'Kate'
