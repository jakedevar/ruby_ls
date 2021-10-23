# exercise_8.rb

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3,
                "BamBam" => 4, "Pebbles" => 5 }
puts flintstones.delete_if { |key, _value| key != "Barney" }
