# exercise_16.rb
=begin
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]

contacts = {"Joe Smith" => {}}

p contact_data["Joe Smith"].map do |k, v|
  v = contact_data
end

p contacts

#spent some time on this one and nothing is coming to mind

#solution 1

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

p contacts
=end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = { "Joe Smith" => {}, "Sally Johnson" => {} }
fields = [:email, :address, :phone]

contacts.each_with_index do |(_name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end
