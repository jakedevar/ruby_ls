class Student
  attr_accessor :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def get_name
    puts @name
  end

  def better_grade_than?(person)
    return true if grade < person.grade
    false
  end

  private

  def get_grade
    puts @grade
  end
end

joe = Student.new('Joe', 'A')
bob = Student.new('Bob', 'B')
puts joe.better_grade_than?(bob)
