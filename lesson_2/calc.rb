# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}") #puts => infront of words
end

prompt(MESSAGES['welcome'])

name = ''
  loop do
    name =gets.chomp  #this makes you put a name
    if name.empty?
      prompt(MESSAGES['valid_name'])
    else
      break
    end
  end

prompt(MESSAGES['hi_name'])

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
  prompt(MESSAGES['first_num'])
  number1 = gets.chomp
    if float?(number1)   #first valide number
      break
    else
    prompt(MESSAGES['not_valid_num'])
    end
  end

  number2 = nil
  loop do 
  prompt(MESSAGES['second_num'])
  number2 = gets.chomp
    if float?(number2)   #second valid number
      break
    else
      prompt(MESSAGES['not_valid_num'])
    end
  end

  MESSAGES['operator_prompt']  #prints a message and you can get the idea
    

  prompt(operator_prompt)

  operator = nil
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['choose'])
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

  prompt(MESSAGES['processing'])

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

  prompt(MESSAGES['result'])

  prompt(MESSAGES['another_calculation'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['thanks'])