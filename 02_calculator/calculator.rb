def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(array)
  array.reduce(0){ |running_total, item| running_total + item }
end

def multiply(*args)
  args.inject(:*)
end

def power(a,b)
  a **= b
end

def factorial(n)
  if n <= 1 
    1
  else
    n * factorial(n-1)
  end
end