def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

def multiply(numbers)
  numbers.inject(1) { |product, number| product * number }
end

def power(base, exponent)
  base ** exponent
end

def factorial(number)
  raise "Invalid input" if number < 0

  1 if number == 0 || number == 1

  result = 1
  number.downto(1) { |n| result *= n }
  result
end