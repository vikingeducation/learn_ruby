def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  numbers.inject(0) { |sum, number| sum + number }
end