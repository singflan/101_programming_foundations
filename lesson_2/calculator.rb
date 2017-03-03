require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
end

def number?(num)
  num.to_f.to_s == num 
end

def operation_to_message(op)
  case op 
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('welcome')

name = ''
loop do 
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

prompt('hi')

loop do #main loop
  number1 = ''
  loop do # first number loop
    prompt('first_number')
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt('invalid_number')
    end
  end

  number2 = ''
  loop do # second number loop
    prompt('second_number')
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt('invalid_number')
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  
  prompt(operator_prompt)
  operator = ''
  loop do 
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('invalid_operator')
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
    when '1'
      number1.to_i() + number2.to_i()
    when '2'
      number1.to_i() - number2.to_i()
    when '3'
      number1.to_i() * number2.to_i()
    when '4'
      number1.to_f() / number2.to_f()
  end

  prompt("The result is #{result}")

  prompt('another_calc')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('goodbye')
