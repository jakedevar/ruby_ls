class Person
  def initialize
    @type = 'Person'
  end

  private 
  attr_reader :type
end

cat = Person.new 

p cat 