require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def operation_to_message(op)
  conversion_hash = {
    '1' => 'Adding',
    '2' => 'Subtracting',
    '3' => 'Multiplying',
    '4' => 'Dividing'
  }
  conversion_hash[op]
end

def get_name
  loop do
    name = gets.chomp
    return name if !(name.empty?)
    prompt(messages('invalid_name'))
  end
end

def get_number(order)
  loop do
    prompt("What's the #{order} number?")
    number = gets.chomp
    return number.to_f if valid_number?(number)
    prompt(messages('invalid_number'))
  end
end

def get_operator
  loop do
    operator = gets.chomp
    return operator if %w(1 2 3 4).include?(operator)
    prompt(messages('invalid_operator'))
  end
end

def calculate_result(operator, number1, number2)
  case operator
  when '1' then number1 + number2
  when '2' then number1 - number2
  when '3' then number1 * number2
  when '4' then number1 / number2
  end
end

def flat_float?(result)
  result % 1 == 0
end

def another_calculation?
  loop do
    answer = gets.chomp.downcase
    return true if %w(y yes).include?(answer)
    return false if %w(n no).include?(answer)
    prompt(messages('invalid_yes_no'))
  end
end

prompt(messages('welcome'))
name = get_name
prompt("Hi #{name}!")

loop do # main loop
  number1 = get_number('first')
  number2 = get_number('second')

  prompt(messages('operator_prompt'))
  operator = get_operator

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = calculate_result(operator, number1, number2)
  result = result.to_i if flat_float?(result)
  prompt("The result is #{result}")

  prompt(messages('another_calculation'))
  answer = another_calculation?
  break unless answer
end

prompt(messages('bye'))
