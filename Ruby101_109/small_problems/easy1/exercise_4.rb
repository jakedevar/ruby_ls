#exercise_4.rb

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
def count_cars(vehicles_arr)
  motor_vehicles = {car: [], SUV: [], truck: [], motorcycle: []}
  vehicles_arr.each do |vehicle|
    if vehicle == 'car'
      motor_vehicles[:car] << vehicle
    elsif vehicle == 'truck'
      motor_vehicles[:truck] << vehicle
    elsif vehicle == 'motorcycle'
      motor_vehicles[:motorcycle] << vehicle
    elsif vehicle == 'SUV'
      motor_vehicles[:SUV] << vehicle
    end
  end
  motor_vehicles.each do |key,value|
    puts "#{key} => #{value.length}"
  end
end

count_cars(vehicles)