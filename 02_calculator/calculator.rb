def add(x, y)
  x+y
end

def subtract(x, y)
  x-y
end

def sum(arr)
  return 0 if arr.empty?
  arr.reduce(:+)
end

def multiply(*nums)
  nums.reduce(:*)
end

def power(x, y)
  x**y
end

def factorial(num)
  return 1 if num === 0
  (1..num).reduce(:*)
end
