def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  sum = 0
  array.each {|num| sum += num }
  sum
end


def multiply(*num)
  product = 1
  num.each { |n| product *= n }
  product
end


def power(num1, num2)
  num1 ** num2
end


def factorial(num)
  if num == 0 || num == 1
    1
  elsif num == 2
    2
  else
    product = 1
    (1..num).each {|num| product *= num}
    product
  end
end
