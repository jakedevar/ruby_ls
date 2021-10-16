# a module is a collection of behaviors avialble to other classes by the use of mixins
module Speak
  def speak
    puts 'speak'
  end
end

class NewToy
  include Speak
end

jake = NewToy.new
jake.speak