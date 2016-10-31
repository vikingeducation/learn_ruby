def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def sum(array)
  array.reduce(0) { |a, b| a + b }
end

def multiply(array)
  array.reduce { |a, b| a * b }
end

def power(base, factor)
  base ** factor
end

def factorial(n)
  return 1 if n == 0
  (1..n).to_a.reduce { |a, b| a * b }
end
