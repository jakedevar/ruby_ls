# class Vehicle
#   attr_reader :make, :model
#   def initialize(make, model, wheels)
#     @make = make
#     @model = model
#     @wheels = wheels
#   end

#   def wheels
#     @wheels
#   end

#   def to_s
#     "#{make} #{model}"
#   end
# end
# class Car < Vehicle

# end

# class Motorcycle < Vehicle
# end

# class Truck < Vehicle
#   attr_reader :payload

#   def initialize(make, model, payload)
#     @make = make
#     @model = model
#     @payload = payload
#   end
# end
class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  def wheels
    4
  end
end

class Motorcycle < Vehicle
  def wheels
    2
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end
