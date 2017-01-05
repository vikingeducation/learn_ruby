def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  return 0 if arr.empty?
  arr.inject(:+)
end

def multiply(arr)
  return 0 if arr.empty?
  arr.inject(:*)
end

def power(num1, pow)
  num1**pow
end

def factorial(num)
  return 0 if num == 0
  fac = [*1..num]
  fac.inject(:*)
end