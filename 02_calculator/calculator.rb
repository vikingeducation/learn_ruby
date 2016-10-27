def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(arr)
  total = 0
  arr.each do |num|
    total += num
  end
  total
end

def multiply(*args)
  total = 1
  args.each do |num|
    total *= num
  end
  total
end

def power(a,b)
  a**b
end

def factorial(num)
  (1..num).inject(:*) || 1
end