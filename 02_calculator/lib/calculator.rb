def multiply(*nums)
  nums.inject(1) { |prod, n| prod * n }
  
end

def power(a, b)
  a ** b
end

def factorial(n)
  return 1 if n <= 1

  n * factorial(n - 1)
  
end

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  return 0 if arr == []
  return arr.inject(:+)
end