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