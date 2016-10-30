def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  sum = 0
  array.each do |i|
    sum += i
  end
  sum
end

def multiply(array)
  product = 1
  array.each do |i|
    product *= i
  end
  product
end

def power(a,b)
  a**b
end

def factorial(n)
  if n == 1
    return 1
  elsif n == 0
    return 0
  else
    n * factorial(n - 1)
  end
end