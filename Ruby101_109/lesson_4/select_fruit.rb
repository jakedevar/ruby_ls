produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(key)
  counter = 0
  fruit_storage = []
  produce_arr = key.keys

  loop do
    if key[produce_arr[counter]] == 'Fruit'
      fruit_storage << produce_arr[counter]
    end
    counter += 1

    break if counter == key.size
  end
  p fruit_storage
end

select_fruit(produce)

=begin
LS solution

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end

=end
