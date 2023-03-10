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

# Loop prompt for inputs (Doesn't work. Inf + NaN error)
def loop_prompt(key, var)
	 loop do
		  print_message(MESSAGES[key])
		  var = gets.chomp
		  if var.empty? || number?(var) == false
				  print_message(MESSAGES['error'])
				  next
		  else
				  break
		  end
	 end
end

# Constant variable declarations
RATE_MULTIPLIER = 100
MONTH_NUMBER = 12

# Variable declarations for loop block
principal = nil
years = nil
months = nil
rate = nil
ans = nil

print_message(MESSAGES['welcome'])
print_message(MESSAGES['lines'])

# Main Program
loop do

  loop do
    print_message(MESSAGES['principal_prompt'])
    principal = gets.chomp
    if principal.empty? || number?(principal) == false
      print_message(MESSAGES['error'])
      next
    else
					 principal = principal.to_f.round(2)
						break
    end
		end

		loop do
    print_message(MESSAGES['years_prompt'])
    years = gets.chomp
    if years.empty? || integer?(years) == false
      print_message(MESSAGES['error'])
      next
				else
					 break
    end
  end

  loop do
    print_message(MESSAGES['months_prompt'])
    months = gets.chomp
    if months.empty? || integer?(months) == false
      print_message(MESSAGES['error'])
      next
				else
					 break
    end
			end

		loop do
    print_message(MESSAGES['apr_prompt'])
    rate = gets.chomp
    if rate.empty? || number?(rate) == false
      print_message(MESSAGES['error'])
      next
				else
					 break
    end
			end

  # Method calls
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

  
		loop do
			 print_message(MESSAGES['another?'])
			 ans = gets.chomp
    if ans.downcase.start_with?('y', 'yes')
					 break
		  elsif ans.downcase.start_with?('n', 'no')
			   break
		  else
		    print_message(MESSAGES['error'])
		  end
		end
		break if ans.downcase.start_with?('n', 'no')
end

print_message(MESSAGES['thanks'])
print_message(MESSAGES['goodbye'])