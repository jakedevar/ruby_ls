class Vehicle
  attr_accessor :color, :model
  attr_reader :year

  def self.calculate_mpg(gas_difference, miles_drive)
    miles_drive / gas_difference
  end
  @@vehicles = 0
  def self.vehicles
    puts "This program has created #{@@vehicles} vehicles"
  end

  def initialize
    @@vehicles += 1
  end

  def initialize(year, color, model)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(speed)
    @current_speed += speed
    puts "You push the gas and accelerate to #{@current_speed} mph."
  end

  def brake(speed)
    @current_speed -= speed
  end

  def current_speed
    puts "You are now going #{@current_speed} mph"
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint=(color)
    @color = color
  end

  def age
    puts "Your #{model} is #{years_old} years old"
  end

  private

  def years_old
    Time.now.year - year.to_i
  end

  def to_s
    "My car is a #{color}, #{year}, #{model}!"
  end
end

module Towing
  def towing
    puts "this truck can tow 8,000 pounds"
  end
end

class MyTruck < Vehicle
  BED_LENGTH = 5.5
  include Towing
end

class MyCar < Vehicle
  CLEARENCE = 8
  print
end

chevy = MyCar.new('2017', 'white', 'malibu')
chevy.speed_up(20)
chevy.current_speed
chevy.shut_down
chevy.current_speed
chevy.age
