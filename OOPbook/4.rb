class MyCar
attr_accessor :color, :model
attr_reader :year
  def self.calculate_mpg(gas_difference, miles_drive)
    miles_drive / gas_difference
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

  def to_s
    "this #{model} is fast"
  end
end

chevy = MyCar.new('2017', 'white', 'malibu')

puts MyCar.calculate_mpg(3, 122)
puts chevy