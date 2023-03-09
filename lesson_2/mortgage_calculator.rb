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
	yearly_rate / 1200 # (100 * 12)
end

# Calculates total loan duration in months
def loan_duration(years, months)
	years = years.to_i
	months = months.to_i
	((years * 12) + months)
end

# Calculates monthly payment amount
def monthly_payment(principal, monthly_rate, duration)
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

# Variable declarations for loop block
principal = nil
years = nil
months = nil
rate = nil

# Main Program
loop do
	print_message("Welcome to Mortgage Calculator!")
	print_message("-------------------------------")

	loop do
		print_message("Please enter the principal amount")
		principal = gets.chomp
		if principal.empty? || number?(principal) == false
			print_message("Please enter a valid number")
			next
		else
			principal = principal.to_f
		end

		print_message("Please enter the number of years in loan duration")
		years = gets.chomp
		if years.empty? || number?(years) == false
			print_message("Please enter a valid number")
			next
		end

		print_message("Please enter the additional months after years")
		months = gets.chomp
		if months.empty? || number?(months) == false
			print_message("Please enter a valid number")
			next
		end

		print_message("Please enter the annual percentage rate")
		rate = gets.chomp
		if rate.empty? || number?(rate) == false
			print_message("Please enter a valid number")
			next
		end

		break
	end

	# Method calls
	mrate = monthly_rate(rate)
	print_message("Monthly Rate " + (mrate * 100).round(4).to_s + "%")

	duration = loan_duration(years, months)
	print_message("Total of #{duration} Payments")

	monthly = monthly_payment(principal, mrate, duration)
	print_message("Payment Every Month $#{format('%.2f', monthly)}")

	interest = interest_accrued(monthly, duration, principal)
	print_message("Total Interest $#{format('%.2f', interest)}")

	amount = total_amount(principal, interest)
	print_message("Total Payment $#{format('%.2f', amount)}")

	print_message("--------------------------------------------------")
	print_message("Another Calculation? (y or yes to calculate again)")
	ans = gets.chomp
	break unless ans.downcase.start_with?('y', 'yes')
end

print_message("Thank you for using the Mortgage Calculator!")
print_message("Good Bye!")