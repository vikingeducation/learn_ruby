def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  if array.empty?
    0
  else
    array.reduce(:+)
  end
end


def multiply(a, b)
  a * b
end
