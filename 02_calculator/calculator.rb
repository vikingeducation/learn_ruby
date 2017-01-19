def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  numbers.reduce(0, :+)
end

def multiply(*numbers)
  numbers.reduce(1, :*)
end

def power(base, exponent)
  if exponent == 0
    return 1
  elsif exponent % 2 == 0
    return power(base * base, exponent / 2)
  else
    return base * power(base * base, (exponent - 1) / 2)
  end
end

def factorial(n)
  (2..n).to_a.reduce(1, :*)
end
