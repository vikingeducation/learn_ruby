def add(a, b)
  res = a + b
end

def subtract(a, b)
  res = a - b
end

def sum(arr)
  sum = 0
  arr.each do |e|
    sum += e
  end
  sum
end

def multiply(*nums)
  total = 1
  nums.each do |num|
    total *= num
  end
  total
end

=begin
def multiply(arr)
  prod = 0

  arr.each do |e|
    prod *=e
  end
  prod
end
=end
