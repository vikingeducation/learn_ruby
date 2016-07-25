def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  sum = 0
  arr.each { |num| sum += num}
  sum
end

def multiply(num1, num2)
  num1 * num2
end

def power(num1, num2)
  num1 ** num2
end

def factorial(num)
  if num <= 1
    num
  else
    num * factorial(num - 1)
  end
end