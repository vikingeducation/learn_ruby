def add(a,b)
  return a + b
end

def subtract(a,b)
  return a - b
end

def sum(array_with_nums)
  # return 0 if array_with_nums.empty?
  # return array_with_nums.reduce { |sum, number| sum + number}
  array_with_nums.reduce(0, :+) #cleaner :D
end

def multiply(array_with_nums)
  array_with_nums.reduce(1, :*)
end

def power(base,exponent)
  return base ** exponent
end

def factorial(number)
  (1..number).reduce(1, :*)
end
