def add(number1, number2)
  number1 + number2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(numbers)
  numbers.reduce(0){|total, number| total + number}
end

def multiply(numbers)
  numbers.reduce(1){|total, number| total * number}
end

def power(num1, num2)
  num1 ** num2
end

def factorial(fac)
  total = 1
  fac.downto(1) {|num| total *= num }
  return total
end
