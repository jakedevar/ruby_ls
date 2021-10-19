class Person
  def name
    @name
  end

  def name=(name)
    @name = name
  end
end

kate = Person.new
kate.name = 'Kate'
puts kate.name # => 'Kate'