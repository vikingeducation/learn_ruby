def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(array)
  sum = 0
  array.each { |num| sum += num }
  sum
end

def multiply(a,b,*c)
  factors = [a,b] + c
  product = 1
  factors.each { |num| product *= num }
  product
end

def power(base,exponent)
  base ** exponent
end

def factorial(num)
  factorial = 1
  while num > 0
    factorial *= num
    num -= 1
  end
  factorial
end