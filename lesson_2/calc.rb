# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
puts MESSAGES.inspect
def prompt(message)
  puts("=> #{message}") #puts => infront of words
end

prompt("Welcome to Calculator! Enter your name:")

name = ''
  loop do
    name =gets.chomp  #this makes you put a name
    if name.empty?
      prompt("Make sure to use a valid name.")
    else
      break
    end
  end

prompt("Hi #{name}!")

loop do #main loop

=begin
  def valid_number?(num)
    num.to_i.to_s == num || num.to_f.to_s == num# checks if valid#
  end

  this is a way it could work up above but there are edge cases
  that might fuck it up so solutions below 
=end
  def float?(input)
    /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
  end

  number1 = nil
  loop do
  prompt("What's the first number?")
  number1 = gets.chomp
    if float?(number1)   #first valide number
      break
    else
    prompt("Hmm.. that dosen't look like a valid number")
    end
  end

  number2 = nil
  loop do 
  prompt("What's the second number?")
  number2 = gets.chomp
    if float?(number2)   #second valid number
      break
    else
      prompt("Hmm.. that dosen't look like a valid number")
    end
  end

  operator_prompt = <<-MSG #prints a message and you can get the idea
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = nil
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  def operation_to_message(op)
   op_message = case op
                  when '1'
                    return 'Adding'
                  when '2'
                    return 'Subtracting'
                  when '3'
                    return 'Multiplying'
                  when '4'
                    return 'Dividing'
                  end
    x = puts 'nioce'
    op_message
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
  when '1'
    number1.to_i + number2.to_i
  when '2'
    number1.to_i - number2.to_i
  when '3'
    number1.to_i * number2.to_i
  when '4'
    number1.to_f / number2.to_f
  end

  prompt("The result is #{result}")

  prompt("Do you want t operform another calculation? (Y to calcuate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("thank you for using claculator")