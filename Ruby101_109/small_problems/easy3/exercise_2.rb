#exercise_2.rb
puts 'input first number'
num1 = gets.chomp.to_i
puts 'input second number'
num2 = gets.chomp.to_i


puts num1 + num2
puts num1 - num2
puts num1 * num2
puts num1 / num2
puts num1 % num2
puts num1 ** num2

#LS solutoin reason i didnt make it like this is because 
#I am pretty familiar with the formatting stuff
# and wanted to save time 
def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number:")
first_number = gets.chomp.to_i
prompt("Enter the second number:")
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")

#this is a solution i was trying to do but didnt do the google search for public send 
OPERATORS = [ '+', '-', '*', '/', '%', '**']

def arithmetic_solutions (num_1, num_2)
  OPERATORS.map { |op| "==> #{num_1} #{op} #{num_2} = #{num_1.public_send(op, num_2)}" }
end

puts "==> Enter the First Number:"
first_usr_num = gets.chomp.to_i

puts "==> Enter the Second Number:"
second_usr_num = gets.chomp.to_i

puts arithmetic_solutions(first_usr_num, second_usr_num)N