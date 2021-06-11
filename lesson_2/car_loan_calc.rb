=begin
-build a car loan calc
  -ask for the loan amount
  -ask what the apr is 
  -ask how many years it compounds
-what is needs to do is see if valid number
-run numbers through an equation
-print said equation so they can see what they did
-offer a montyly payment and loan duration in months 
-figure out if i need a whole number int for apr of float
-convert apr to monthly interest
-are you working in months or years? convert acordingly
=end
=begin
p 5 * 0.01 
^leaving that there 
START
  GET var = loan amount
  GET var = APR and multiply if needed *bonus if it completes both in one funciton
  GET var = years of loan
SET Method to divide apr by 12
READ the vars from user
PRINT Solution
END
=end

loan_amount = 20_000
apr = 0.03
length_of_loan_years = 6

def apr_divide(apr)
  apr / 12
end

def calculate(loan_amount, monthly_interest, years)
  puts m = 
end

calculate(loan_amount, apr, length_of_loan_years)
