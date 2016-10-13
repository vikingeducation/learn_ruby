def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  sum = 0
  arr.each { |num| sum += num }
  sum
end

def multiply(nums)
  product = 1
  nums.each { |num| product *= num }
  product
end

def power(num1, num2)
  num1 ** num2
end

def factorial(num)
  product = 1
  1.upto(num) { | multiple | product *= multiple }
  product
end