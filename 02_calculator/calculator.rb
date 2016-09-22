def add(first, second)
  return (first + second)
end

def subtract(first, second)
  return (first - second)
end

def sum(list)
  sum = 0
  if list.empty? == false
    list.each do |number|
      sum =  sum + number
    end
  else
    sum = 0
  end
  return sum
end

def multiply(number1, number2)
  return (number1*number2)
end

def power(num1, num2)
  return (num1 ** num2)
end

def factorial(num)
  fact = 1
  while num != 0
    fact *= num
    num -= 1
  end
  return fact
end