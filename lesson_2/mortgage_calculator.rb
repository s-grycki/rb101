require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

# Method Definitions

# Puts messages with => prefix
def print_message(input)
  puts "=> #{input}"
end

# Checks if input is an integer greater than or equal to zero
def integer?(input)
  input.to_i.to_s == input && input.to_i >= 0
end

# Checks if input is a float greater than or equal to zero
def float?(input)
  input.to_f.to_s == input && input.to_f >= 0.0
end

# Recursively calls is_integer? and is_float? to see if input is a valid number
def number?(input)
  integer?(input) || float?(input)
end

# Calculates the monthly interest rate
def monthly_rate(yearly_rate)
  yearly_rate = yearly_rate.to_f
  yearly_rate / (RATE_MULTIPLIER * MONTH_NUMBER)
end

# Calculates total loan duration in months
def loan_duration(years, months)
  years = years.to_i
  months = months.to_i
  ((years * MONTH_NUMBER) + months)
end

# Calculates monthly payment amount
def monthly_payment(principal, monthly_rate, duration)
  return principal / duration if monthly_rate.zero?
  principal * (monthly_rate / (1 - (1 + monthly_rate)**(-duration)))
end

# Calculates total interest accrued
def interest_accrued(monthly_payment, duration, principal)
  ((monthly_payment * duration) - principal)
end

# Calculates total amount owed
def total_amount(principal, total_interest)
  principal + total_interest
end

# Input validator if only integers are allowed
def input_validator_int(key, val)
  loop do
    print_message(MESSAGES[key])
    val = gets.chomp
    if val.empty? || integer?(val) == false
      print_message(MESSAGES['error'])
    else
      break
    end
  end
  val
end

# Input validator if floats are allowed
def input_validator_float(key, val)
  loop do
    print_message(MESSAGES[key])
    val = gets.chomp
    if val.empty? || number?(val) == false
      print_message(MESSAGES['error'])
    else
      break
    end
  end
  val
end

# Asks if user wants to calculate again
def again?(val)
  loop do
    print_message(MESSAGES['another?'])
    val = gets.chomp
    if val.downcase.start_with?('y', 'yes', 'n', 'no')
      return val
    else
      print_message(MESSAGES['error'])
    end
  end
end

# Constant variable declarations
RATE_MULTIPLIER = 100
MONTH_NUMBER = 12

print_message(MESSAGES['welcome'])
print_message(MESSAGES['lines'])

# Main Program
loop do
  principal = input_validator_float('principal_prompt', principal)
  years = input_validator_int('years_prompt', years)
  months = input_validator_int('months_prompt', months)
  rate = input_validator_float('apr_prompt', rate)

  # Wanted principal and rate to have different rounding rules
  principal = principal.to_f.round(2)

  mrate = monthly_rate(rate)
  print_message("Monthly Rate " + (mrate * RATE_MULTIPLIER).round(4).to_s + "%")

  duration = loan_duration(years, months)
  print_message("Total of #{duration} Payments")

  monthly = monthly_payment(principal, mrate, duration)
  print_message("Payment Every Month $#{format('%.2f', monthly)}")

  interest = interest_accrued(monthly, duration, principal)
  print_message("Total Interest $#{format('%.2f', interest)}")

  amount = total_amount(principal, interest)
  print_message("Total Payment $#{format('%.2f', amount)}")

  print_message(MESSAGES['lines2'])
  ans = again?(ans)
  break if ans.downcase.start_with?('n', 'no')
end

print_message(MESSAGES['thanks'])
print_message(MESSAGES['goodbye'])