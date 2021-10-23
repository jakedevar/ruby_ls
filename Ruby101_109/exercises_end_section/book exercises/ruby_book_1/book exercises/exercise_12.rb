# exercise_12.rb

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = { "Joe Smith" => {}, "Sally Johnson" => {} }

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# p contacts["Joe Smith"][:email]
# p contacts.has_key?(:email) incorrect
# contacts { |k, v| k == :email}
# after printing the solution i realized i was running
# the wrong exercise program in terminal
# excited to find that first try wasent clean but it did
# the job

# solution
# puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
# puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"
