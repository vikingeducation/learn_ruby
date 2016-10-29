def add(a, b)
  total = a + b
end

def subtract(a, b)
  total = a -b
end

def sum(array)
  total = 0

  array.each do |item|
    total += item
  end

  total
end

def multiply(array)
  total = 1

  array.each do |item|
    total *= item
  end

  total
end

def power(a, b)
  total = 1

  # total = a ** b
  b.times do
    total *= a
  end

  total
end

def factorial(a)
  if a == 0 || a == 1
    return 1
  else
    a * factorial(a - 1)
  end
end