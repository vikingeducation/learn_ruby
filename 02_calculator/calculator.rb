def add (a,b)
  return a + b
end


def subtract(a,b)
  return a - b
end


def sum(array)
  if array == []
    return 0
  else
    return array.reduce(:+)
  end
end


def multiply(array)
  if array == []
    return []
  else
    array.reduce(:*)
  end
end


def power(a,b)
  return a ** b
end


def factorial(x)
  if x == 0
    return 1
  else
    x * factorial(x-1)
  end
end