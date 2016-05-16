
def add(x, y)
  return x + y
end

def subtract(x, y)
  return x - y
end

def sum(numbers)
  if numbers.length == 0
    return 0
  else
    return numbers.reduce(:+)
  end
end

def multiply(numbers)
  if numbers.length == 0
    return 0
  else
    return numbers.reduce(:*)
  end
end

def power(base, exponent)
  return base**exponent
end

def factorial(set_size)
  if set_size == 0 || set_size == 1
    return 1
  else
    return set_size * factorial(set_size - 1)
  end
end