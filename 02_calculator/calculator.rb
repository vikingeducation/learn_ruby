def add(num_1, num_2)
  num_1 + num_2
end

def subtract(num_1, num_2)
  num_1 - num_2
end

def sum(array)
  sum = 0
  array.each {|num| sum += num}
  sum
end

def multiply(*args)
  product = 1
  args.each {|num| product *= num}
  product
end

def power(base, exponent)
  result = 1
  exponent.times {result*=base}
  result
end

def factorial(num)
  return 1 if num == 0 #by definition
  result = 1
  (1..num).each {|x| result *= x}
  return result
end
