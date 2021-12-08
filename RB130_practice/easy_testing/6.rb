# Write a minitest assertion that will fail unless employee.hire raises a NoExperienceError exception.
require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class NoExperienceError < StandardError; end

class Employee
  def hire
    raise NoExperienceError
  end
end

class NoExp < MiniTest::Test
  def setup
    @employee = Employee.new
  end

  def test_exp
    assert_raises(NoExperienceError) {@employee.hire}
  end
end