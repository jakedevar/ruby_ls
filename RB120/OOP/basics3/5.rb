module Tow
  def tow
    puts "I can tow a trailer!"
  end
end

class Truck
  include Tow
end

class Car
end

truck1 = Truck.new
truck1.tow
