def add(num1, num2)
  num1+num2
end

def subtract(num1, num2)
  num1-num2
end

def sum(arr)
  arr.reduce(0, :+)
end

def multiply(arr)
  arr.reduce(1, :*)
end

def power(base, power)
  base ** power
end

def factorial(num)
  return 1 if num <= 1
  num * factorial(num-1)
end