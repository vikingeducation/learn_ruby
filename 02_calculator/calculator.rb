def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.reduce(0, :+)
end

def multiply(*numbers)
  numbers.reduce(1, :*)
end

def power(base, exponent)
  exponent == 0 ? 1 : base * power(base, exponent - 1)
end

def factorial(n)
  n == 0 ? 1 : n * factorial(n - 1)
end

