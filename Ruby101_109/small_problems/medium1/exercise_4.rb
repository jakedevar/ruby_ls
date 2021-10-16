#exercise_4.rb
def hash_maker(int)
  key_arr = (1..int).to_a
  hash = {}
  result = []
  result1 = []
  key_arr.each { |n| hash[n] = false}
  counter = 1
  until counter > int
    hash.each_pair do |key, value|
      if key % counter == 0
        hash[key] = !value
      end
    end
    counter += 1
  end
  hash.each_value { |value| result << value }
  result.each_with_index do |item, index|
    result1 << (index + 1) if item == true
  end
  result1
end
# my solution was correct however I should have broken it up into helper methods with it being so big. 
#LS soltion

# def initialize_the_lights(num)
#   lights = Hash.new
#   1.upto(num) { |n| lights[n] = 'off'}
#   lights
# end

# def on_lights(lights)
#   lights.select { |_position, state| state == 'on' }.keys
# end
 
# def toggle_every_nth_light(lights, nth)
#   lights.each do |position, state|
#     if position % nth == 0
#       lights[position] = (state == 'off') ? 'on' : 'off'
#     end
#   end
# end

# def toggle_lights(number_of_lights)
#   lights = initialize_the_lights(number_of_lights)
#   1.upto(lights.size) do |iteration_number|
#     toggle_every_nth_light(lights, iteration_number)
#   end

#   on_lights(lights)
# end

p hash_maker(1000)