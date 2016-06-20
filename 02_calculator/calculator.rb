def add(num_1,num_2)
  num_1+num_2
end

def subtract(num_1,num_2)
  num_1-num_2
end

def sum(nums)
  nums.reduce(0,:+)
end

def multiply(nums)
  nums.reduce(1,:*)
end

def power(base,exponent)
  if exponent==0
    1
  elsif exponent==1
    base
  else
    base*power(base,exponent-1)
  end
end

def factorial(number)
  if number==0
    1
  elsif number==1
    number
  else
    number*factorial(number-1)
  end
end