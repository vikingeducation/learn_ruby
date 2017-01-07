def add(x, y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(array)
  new_sum = 0
  array.each do |unit|
    new_sum += unit
  end
  new_sum
end

def multiply(array)
  total = 1
  array.each do |unit|
    total *= unit
  end
  total
end

def power(x,y)
  x**y
end

def factorial(x)
  if x == 0
    return 0
  end
  total = 1
  counter = 1
  while counter <= x
    total *= counter
    counter += 1
  end
  total
end
