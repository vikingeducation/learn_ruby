# add method
def add(first, second)
  first + second
end

#subtract method
def subtract(first, second)
  first - second
end

#sum method
def sum(array)
  sum = 0
  array.each { |x| sum += x }
  sum
end

#multiply method
def multiply(*numbers)
  product = 1
  numbers.each { |x| product *= x}
  product
end

#power method
def power(a,b)
  a ** b
end

#factorial method
def factorial(n)
  product = 1
  (n).downto(1).each { |x| product *= x }
  product
end
