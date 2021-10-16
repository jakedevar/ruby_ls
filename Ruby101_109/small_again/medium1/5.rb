=begin
------------------- Problem ---------------------
input an odd integer
output a diamond of *

assuming the integer will always be odd and never be 0 or an error input create a diamond like this man

------------------- Examples --------------------

ones provided are good enough
------------------- Data ------------------------
i am going to use Intger#times for this sob

------------------- Algorithm -------------------
take the arg and then 
init a counter at 1

call times on int
init a var that is the counter minus the int / 2
  calling puts "#{' ' * var}#{counter * '*'}#{}" using interpolation on this one
end

shoot forgot about the bottom half, not to worry this is easy just flithe logic more or less and use untill 
probs could break up into top and bottom half methods but wont for brevity of time 

------------------- Code ------------------------
=end

def diamond(int)
  counter = 1
  until (int - counter) / 2 < 0
    spaces = (int - counter) / 2
    puts "#{' ' * spaces}#{'*' * counter}#{' ' * spaces}"
    counter += 2
  end
  counter -= 2
  until counter < 3
    counter -= 2
    spaces = (int - counter) / 2
    puts "#{' ' * spaces}#{'*' * counter}#{' ' * spaces}"
  end
end

diamond(1)

diamond(3)

diamond(5)

diamond(7)

diamond(9)
