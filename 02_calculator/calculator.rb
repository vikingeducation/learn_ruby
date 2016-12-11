# TDD - RSpec
# Add 2 numbers
def add(num1, num2)
  num1 + num2
end

# Subtract 2 numbers
def subtract(num1,num2)
  num1 - num2
end


# Sum an array of numbers
def sum(nums)
  total = 0
  nums.each do |n|
    total+= n
  end
  return total
end

# Multiply numbers with a variable number of arguments
def multiply(*nums)
  total = 1

  num_of_args = nums.length

  if(num_of_args == 1)
    total = nums[0]
  else
    nums.each do |n|
      total *= n
    end
  end
  return total
end

# Power of a number
def power(base, exponent)
  total = 1

  exponent.times do
    total *= base
  end

  return total
end

# Factorial of a number
def factorial(n)
  if(n==1)
    return 1
  elsif (n<1)
    return -1
  elsif(n>1)
    return(n*factorial(n-1))
  end
end

