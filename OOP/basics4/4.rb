class Person
  attr_accessor :first_name
  attr_writer :last_name

  def first_equals_last?
    first_name == last_name
  end

  private

  attr_reader :last_name
end

person1 = Person.new
p person1.first_name = 'Dave'
p person1.last_name = 'Smith'
puts person1.first_equals_last?
