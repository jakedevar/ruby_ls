#exercise_14.rb
#Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables.
#The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_hsh = []
hsh.each do |key, value|
  if value[:type] == 'fruit'
    new_hsh << value[:colors].each { |item| item.capitalize!}
  else 
    new_hsh << value[:size].upcase
  end
end

p new_hsh

#LS solution
hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end
# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]