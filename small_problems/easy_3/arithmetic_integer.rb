def prompt(msg)
  puts "==> #{msg}"
end

def perform_operations(num1, num2)
  prompt "#{num1} + #{num2} = #{num1 + num2}"
  prompt "#{num1} - #{num2} = #{num1 - num2}"
  prompt "#{num1} * #{num2} = #{num1 * num2}"
  prompt "#{num1} / #{num2} = #{num1 / num2}"
  prompt "#{num1} % #{num2} = #{num1 % num2}"
  prompt "#{num1} ** #{num2} = #{num1 ** num2}"

end

prompt "Enter the first number: "
first_num = gets.chomp.to_i
prompt "Enter the second number: "
second_num = gets.chomp.to_i

perform_operations(first_num, second_num)
