def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(nums_to_sum)
  total = 0
  nums_to_sum.each do |num|
    total += num
  end

  return total
end

def multiply(nums_to_multiply=[])
  total = 1
  nums_to_multiply.each do |num|
    total *= num
  end

  return total
end

def power(a, b)
  a**b
end

def factorial(num)
  total = 1
  2.upto(num) do |product|
    total *= product
  end

  return total
end
