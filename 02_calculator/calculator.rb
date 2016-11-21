def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(numbers)
  return 0 if numbers.empty?
  numbers.inject(:+)
end

def multiply(numbers)
  return 0 if numbers.empty?
  numbers.inject(:*)
end

def power(num1, num2)
  num1 ** num2
end

def factorial(num)
  raise ArgumentError, "Number must be 0 or greater" if num < 0
  return 1 if num < 2
  (1..num).inject(:*)
end
