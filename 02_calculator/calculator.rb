def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(arr)
  sum = 0
  arr.each do |item|
    sum += item
  end
  sum
end

def multiply(nums)
  sum = 1
  nums.each do |item|
    sum *= item
  end
  sum
end

def power(a,b)
  a ** b
end

def factorial(num)
  sum = 0
  adds = 1
  (1).upto num do  |item|
    adds *= item  
  end
  sum + adds
end