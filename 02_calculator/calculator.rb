def add(a, b)
  a + b
end

def subtract(a, b)
  a -  b
end

def sum(array)
  array.inject(0) { |sum, n| sum + n }
end

def multiply(a, b)
  a * b
end

def power(a, b)
  a**b
end

def factorial(a)
  (1..a).inject(:*) || 1
end
