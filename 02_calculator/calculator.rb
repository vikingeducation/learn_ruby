def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(numbers)
  if numbers.length == 0
    0
  else
    numbers[0] + sum(numbers[1..-1])
  end
end

def multiply(numbers)
  if numbers.length == 0
    1
  else
    numbers[0] * multiply(numbers[1..-1])
  end
end

def power(x,y)
  x ** y
end

def factorial(x)
  if x == 0
    1
  else
    multiply((1..x).to_a)
  end
end
