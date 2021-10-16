# -build a car loan calc
#   -ask for the loan amount
#   -ask what the apr is
#   -ask how many years it compounds
# -what is needs to do is see if valid number
# -run numbers through an equation
# -print said equation so they can see what they did
# -offer a montyly payment and loan duration in months
# -figure out if i need a whole number int for apr of float
# -convert apr to monthly interest
# -are you working in months or years? convert acordingly
# p 5 * 0.01
# ^leaving that there
# START
# LOOP through program so that it keeps asking you
# SET method to get apr input into a float and multiply by .1
# GET var = loan amount
#   GET var = APR and multiply if needed *bonus if it completes both in one funciton
#   GET var = years of loan
# SET Method to divide apr by 12
# READ the vars from user
# PRINT Solution
# END
require 'yaml'
MESSAGES = YAML.load_file('car_loan_txt.yml')
loop do
  loan_amount = nil
  apr = nil
  years = nil

  def prompt(message)
    puts ">> #{message}"
  end

  def valid_number?(num)
    num.to_i.to_s == num
  end

  def apr_format(apr)
    apr = (apr.to_f * 0.01) / 12
  end

  loop do
    prompt(MESSAGES['enter_loan'])
    loan_amount = gets.chomp
    break if valid_number?(loan_amount)

    prompt('Please enter a valid number')
  end

  loop do
    prompt('Please enter the apr as a whole number')
    apr = gets.chomp
    break if valid_number?(apr)

    prompt('Please enter a valid number')
  end

  loop do
    prompt('Please enter the length of the loan in years')
    years = gets.chomp
    break if valid_number?(years)

    prompt('Please enter a valid number')
  end

  def calculate(loan_amount, monthly_interest, years)
    m = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**-years))
    puts m
  end

  calculate(loan_amount.to_i, apr_format(apr), (years.to_i * 12))

  prompt('Do you want to do another calculation? (Y for yes)')
  answer = gets.chomp.downcase
  break if answer != 'y'
end
