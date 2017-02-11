def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(nums)
  nums.reduce(0){ |total, n| total + n }
end

def multiply(*nums)
  nums.reduce(1){ |total, n| total * n }
end

def power(x, y)
  x ** y
end

def factorial(x)
  if x <= 1
    1
  else
    x * factorial(x - 1)
  end
end
