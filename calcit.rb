# This is the opening prompt
def get_operation
  puts "This is a calculator function...."
  puts "What type operation would you like me to calculate?"
  puts "(Type 'add,' 'sub', 'mult,' 'div,' 'exp,' or 'sqrt.)"

  @operation = gets.chomp
  validate_operation
end

# Validates that a requested operation is called
def validate_operation
  ops = ["add", "sub", "mult", "div", "exp", "sqrt"]
  if ops.include?(@operation) == false
    puts "  "
    puts "Please put in a valid operation"
    puts "  "
    get_operation
  end
end

# Calls get_operation first, which then calls valid_operation
get_operation

# Validates that the input from @operation is a number
def valid_num?(num)
  Float(num) != nil rescue false
end

# Using this validation, asks for a number to be used in the operation
def valid_num_prompt
  puts "Type a number you would like to use for this operation."
  answer = gets.chomp

  if valid_num?(answer) == false # this part works, but only two times.
    puts "Please type in a valid number." # I can't figure out how to make it recursively go back.
    answer = gets.chomp
    answer
  else
    answer.to_i
  end
end

def prompt
  if @operation == "add"
    num1 = valid_num_prompt
    num2 = valid_num_prompt

    num1
    num2

    puts "Your addition solution is #{num1 + num2}."

  elsif @operation == "sub"
    num1 = valid_num_prompt
    num2 = valid_num_prompt

    num1
    num2

    puts "Your subtraction solution is #{num1 - num2}."

  elsif @operation == "mult"
    num1 = valid_num_prompt
    num2 = valid_num_prompt

    num1
    num2

    puts "Your mutliplication solution is #{num1 * num2}."

  elsif @operation == "div"
    num1 = valid_num_prompt
    num2 = valid_num_prompt

    num1
    num2

    puts "Your division solution is #{num1/num2}."

  elsif @operation == "exp"
    num1 = valid_num_prompt
    num2 = valid_num_prompt

    num1
    num2

    puts "Your exponent solution is #{num1**num2}."

  elsif @operation == "sqrt"
    num1 = valid_num_prompt

    num1

    puts "Your square root solution is #{Math.sqrt(num1)}."
  end
end

  prompt
