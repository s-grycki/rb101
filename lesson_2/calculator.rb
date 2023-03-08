LANGUAGE = 'en'

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang)
  MESSAGES[lang][message]
end

def prompt(message)
  puts("=> #{message}")
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  case op
  when '1'
    MESSAGES[LANGUAGE]['add']
  when '2'
    MESSAGES[LANGUAGE]['subtract']
  when '3'
    MESSAGES[LANGUAGE]['multiply']
  when '4'
    MESSAGES[LANGUAGE]['divide']
  end
end

prompt(messages('welcome', LANGUAGE))

name = nil
loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES[LANGUAGE]['valid_name'])
  else
    break
  end
end

prompt(MESSAGES[LANGUAGE]['greet'] + "#{name}!")
loop do # main loop
  number1 = nil
  loop do
    prompt(MESSAGES[LANGUAGE]['first'])
    number1 = gets.chomp

    if number?(number1)
      break
    else
      prompt(MESSAGES[LANGUAGE]['valid_num'])
    end
  end

  number2 = nil
  loop do
    prompt(MESSAGES[LANGUAGE]['second'])
    number2 = gets.chomp

    if number?(number2)
      break
    else
      prompt(MESSAGES[LANGUAGE]['valid_num'])
    end
  end

  prompt(MESSAGES[LANGUAGE]['operator'])

  operator = nil
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES[LANGUAGE]['valid_operator'])
    end
  end

  prompt(operation_to_message(operator))

  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end

  prompt(MESSAGES[LANGUAGE]['result'] + result.to_s)

  prompt(MESSAGES[LANGUAGE]['again'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES[LANGUAGE]['farewell'])