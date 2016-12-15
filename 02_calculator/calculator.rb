def add(a, b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(nums)
  return 0 if nums == []
  sum = 0
  nums.each do |n|
    sum += n
  end
  sum
end

def multiply(*args)
  product = 1
  args.each do |n|
    product *= n
  end
  product
end

def power(base, exp)
  base ** exp
end

def factorial(num)
  product = 1
  (1..num).reverse_each do |n|
    product *= n
  end
  product
end
