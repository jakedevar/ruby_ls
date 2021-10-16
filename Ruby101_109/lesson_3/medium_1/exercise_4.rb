#exercise_4.rb

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

#+ does not mutate the caller so input array will remain the same
# when you call it in the if satement below
# you need to use << to mutate the caller and update the 
# buffer array

=begin 
Yes, there is a difference. While both methods have the 
same return value, in the first implementation, the input
argument called buffer will be modified and will end up 
being changed after rolling_buffer1 returns. That is, the
 caller will have the input array that they pass in be
  different once the call returns. In the other 
  implementation, rolling_buffer2 will not alter the 
  caller's input argument.

  I think mine was the same more or less but this is more
  in depth these answers will most likley be what 
  is required on the end assesment 
=end