#exercise_8.rb

status = ['awake', 'tired'].sample

x = status == 'awake' ? "Be productive!" : "Go to sleep!"

puts x 

=begin 
#LS Solution
alert = if status == 'awake'
          'Be productive!'
        else
          'Go to sleep!'
        end

puts alert

=end 