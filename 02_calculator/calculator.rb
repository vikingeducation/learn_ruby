#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  s = 0
  numbers.each{|x| s+=x }
  return s
end

def multiply(*args)
  product = 1
  args.each{|i| product *= i}
  return product
end

def power(a, b)
  a ** b
end

def factorial(a)
  if a == 0
	return 1
  else
	return a * factorial(a-1)
  end
end
